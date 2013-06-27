#include "wakeclient.h"
#include <wakeproto.h>
#include <QtNetwork/QtNetwork>

WakeClient::WakeClient(QObject *parent) :
    QObject(parent)
{
    QByteArray data;
    wproto = new Wakeproto();
    connect(wproto,SIGNAL(packetReceived(QByteArray)),this,SLOT(packet_rcvd(QByteArray)));


    tcpSocket = new QTcpSocket(this);
    tcpSocket->connectToHost("localhost",8888);
    if(tcpSocket->isOpen()){
       data = wproto->createpacket(100,200,"senddata");
       tcpSocket->write(data);
    }
}

WakeClient::~WakeClient()
{
    tcpSocket->close();
}
