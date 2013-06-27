#include "wakeclient.h"
#include <wakeproto.h>
#include <QtNetwork/QtNetwork>

WakeClient::WakeClient(QObject *parent) :
    QObject(parent)
{
    tcpSocket = new QTcpSocket(this);
    tcpSocket->connectToHost("localhost",8888);
    if(tcpSocket->isOpen()){
        tcpSocket->write("HI!");
    }
}

WakeClient::~WakeClient()
{
    tcpSocket->close();
}
