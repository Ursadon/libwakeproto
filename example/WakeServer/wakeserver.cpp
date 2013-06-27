#include "wakeserver.h"
#include <QDebug>
#include <QtNetwork/QtNetwork>

WakeServer::WakeServer(QObject *parent) :
    QObject(parent)
{
    QTextCodec* codec = QTextCodec::codecForName("UTF8");
    QTextCodec::setCodecForLocale(codec);

    tcpServer = new QTcpServer(this);
    connect(tcpServer, SIGNAL(newConnection()), this, SLOT(newuser()));
    if (!tcpServer->listen(QHostAddress::Any, 8888)) {
        qDebug() << QObject::tr("Unable to start the server: %1.").arg(tcpServer->errorString());
    } else {
        qDebug() << tcpServer->isListening() << "TCPSocket listen on port";
        qDebug() << QString::fromUtf8("Server running!");
    }
}
WakeServer::~WakeServer()
{
    tcpServer->close();
}

void WakeServer::packet_rcvd(QByteArray packet)
{
    qDebug() << "[WakeServer][INFO]: Packet received!" << endl;
    //sx.dump_packet(packet);
}

void WakeServer::newuser()
{
    QTcpSocket* clientSocket=tcpServer->nextPendingConnection();
    qDebug() << QString::fromUtf8("New connection! ") + clientSocket->peerAddress().toString() + ":" + QString::number(clientSocket->peerPort());
    int idusersocs=clientSocket->socketDescriptor();
    SClients[idusersocs]=clientSocket;
    connect(SClients[idusersocs],SIGNAL(readyRead()),this, SLOT(slotReadClient()));
    //    tcpSocket = tcpServer->nextPendingConnection();
    //    if(tcpSocket->state() == QTcpSocket::ConnectedState)
    //    {
    //        qDebug() << "New connection established.";
    //    }
    //    //connect(connect, SIGNAL(disconnected()), this, SLOT(on_disconnected()));
    //    connect(tcpSocket, SIGNAL(readyRead()), this, SLOT(slotReadClient()));
}

void WakeServer::slotReadClient()
{
    QTcpSocket* clientSocket = (QTcpSocket*)sender();
    int idusersocs=clientSocket->socketDescriptor();
    QTextStream os(clientSocket);
    os.setAutoDetectUnicode(true);
    os << "HTTP/1.0 200 Ok\r\n"
          "Content-Type: text/html; charset=\"utf-8\"\r\n"
          "\r\n"
          "<h1>Nothing to see here</h1>\n"
       << QDateTime::currentDateTime().toString() << "\n";
    qDebug() << "ReadClient:"+clientSocket->readAll()+"\n\r";
    // Если нужно закрыть сокет
    clientSocket->close();
    SClients.remove(idusersocs);
    //    while(tcpSocket->canReadLine())
    //    {
    //        QByteArray ba = tcpSocket->readLine();
    //        if(strcmp(ba.constData(), "!exit\r\n") == 0)
    //        {
    //            tcpSocket->disconnectFromHost();
    //            break;
    //        } else {

    //        }
    //        qDebug() << ">> " << ba.constData();
    //    }
}
