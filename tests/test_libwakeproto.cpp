/*
 * Copyright (c) 2013, Nikolay Lomakin <lomakin90@yandex.ru>
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 * OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 * IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
 * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
 * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

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
