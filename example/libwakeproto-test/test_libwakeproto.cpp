#include "test_libwakeproto.h"
#include <QTest>
#include <QSignalSpy>

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
    QByteArray packet = lwp->createpacket(201,2,"senddata");
    QVERIFY( stateSpy.isValid() );
    for (int i = 0; i < packet.size(); i++) {
        QByteArray k;
        lwp->getpacket(k.append(packet.at(i)));
    }
    QCOMPARE( stateSpy.count(), 1 );
}
