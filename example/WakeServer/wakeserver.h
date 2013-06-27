#ifndef WAKESERVER_H
#define WAKESERVER_H

#include <QObject>
#include <wakeproto.h>
#include <QtNetwork/QtNetwork>

class WakeServer : public QObject
{
    Q_OBJECT
public:
    explicit WakeServer(QObject *parent = 0);

    ~WakeServer();
private:
    QTcpServer *tcpServer;
    QTcpSocket *tcpSocket;
    QMap<int,QTcpSocket *> SClients;
signals:
    
private slots:
    void packet_rcvd(QByteArray packet);
    void newuser();
    void slotReadClient();

};

#endif // WAKESERVER_H
