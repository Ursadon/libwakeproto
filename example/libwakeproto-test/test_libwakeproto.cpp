#include "test_libwakeproto.h"
#include <QTest>
#include <QSignalSpy>
#include <QDebug>
Test_libwakeproto::Test_libwakeproto(QObject *parent) :
    QObject(parent)
{

}
void Test_libwakeproto::lwp_test_tx()
{
    Wakeproto *lwp = new Wakeproto;
    const unsigned char data[] = {0xC0, 0xC9, 0x02, 0x08, 0x73, 0x65, 0x6E, 0x64, 0x64, 0x61, 0x74, 0x61, 0xF0};
    QByteArray packet;
    packet = QByteArray::fromRawData((char*)data, 13);
    QCOMPARE(lwp->createpacket(201,2,"senddata"), packet);
}

void Test_libwakeproto::lwp_test_rx()
{
    Wakeproto *lwp = new Wakeproto;
    QSignalSpy stateSpy(lwp, SIGNAL( packetReceived(QByteArray) ) );
    QByteArray packet = lwp->createpacket(201,2,"senddata");
    QVERIFY( stateSpy.isValid() );
    lwp->getpacket(packet);
    QCOMPARE( stateSpy.count(), 1 );
}
void Test_libwakeproto::lwp_test_rx_continuous()
{
    Wakeproto *lwp = new Wakeproto;
    QSignalSpy stateSpy(lwp, SIGNAL( packetReceived(QByteArray) ) );
    const unsigned char data[] = {0xC0, 0xC9, 0x02, 0x08, 0x73, 0x65, 0x6E, 0x64, 0x64, 0x61, 0x74, 0x61, 0xF0};
    QByteArray packet;
    packet = QByteArray::fromRawData((char*)data, 13);
    QVERIFY( stateSpy.isValid() );
    for (int i = 0; i < packet.count(); i++) {
        QByteArray k;
        lwp->getpacket(k.append(packet.at(i)));
    }
    QCOMPARE( stateSpy.count(), 1 );
}
void Test_libwakeproto::lwp_test_rx_bruteforce()
{
    Wakeproto *lwp = new Wakeproto;
    QSignalSpy stateSpy(lwp, SIGNAL( packetReceived(QByteArray) ) );
    QByteArray packet;
    QVERIFY( stateSpy.isValid() );
    for (unsigned int i = 0; i < 256; i++) {
        for (unsigned int j = 0; j < 256; j++) {
            packet = lwp->createpacket(j,i,"senddata");
            if (lwp->getpacket(packet) == 1) {
                qDebug() << "j= " << j << " i= " << i << endl;
                QFAIL("Error: CRC mismatch");
            }
        }
    }
    QCOMPARE( stateSpy.count(), 256*256 );
}
