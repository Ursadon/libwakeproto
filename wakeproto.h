#ifndef _WAKEPROTO_H
#define _WAKEPROTO_H

#include <QCoreApplication>
#include <QtCore/QtGlobal>
#if defined(LIBWAKEPROTO_LIBRARY)
#define LIBWAKEPROTO_EXPORT Q_DECL_EXPORT
#else
#define LIBWAKEPROTO_EXPORT Q_DECL_IMPORT
#endif

#define FEND 0xC0
#define FESC 0xDB
#define TFEND 0xDC
#define TFESC 0xDD

class LIBWAKEPROTO_EXPORT Wakeproto : public QObject
{
    Q_OBJECT
public:
    Wakeproto();
    ~Wakeproto();
    void test();
    QByteArray createpacket(unsigned char address, unsigned char cmd, QByteArray data);
    int getpacket(QByteArray datastream);
    void dump_packet(QByteArray packet);
private:
    enum PacketHeader { fend = 0, address, cmd, numofbytes, datastream, crc};
    bool packet_started, data_started;
    unsigned char num_of_bytes, byte_stuffing;
    QByteArray rx_temp_packet, rx_packet_data;
    QByteArray stuffing(QByteArray packet);
    unsigned int getcrc(QByteArray data);
signals:
    void packetReceived(QByteArray packet);
};

#endif // _WAKEPROTO_H
