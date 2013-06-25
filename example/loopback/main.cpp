#include <QtCore/QCoreApplication>
#include <QDebug>
#include <wakeproto.h>
#include "loopback.h"
int main(int argc, char *argv[])
{
    QCoreApplication app(argc, argv);
    looptest lt;
    return app.exec();
}
looptest::looptest()
{
    qDebug() << "[LoopTest][INFO]: Program started" << endl;
    Wakeproto sx;
    connect(&sx,SIGNAL(packetReceived(QByteArray)),this,SLOT(packet_rcvd(QByteArray)));
    QByteArray data;
    data = sx.createpacket(219,220,"senddata");
    sx.getpacket(data);
//    data = sx.createpacket(220,220,"senddata");
    sx.getpacket(data);
}

looptest::~looptest()
{
    qDebug() << "[LoopTest][INFO]: Running ~looptest()" << endl;
}

void looptest::packet_rcvd(QByteArray packet)
{
    qDebug() << "[LoopTest][INFO]: Packet received!" << endl;
    sx.dump_packet(packet);
}

