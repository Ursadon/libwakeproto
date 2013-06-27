#ifndef WAKECLIENT_H
#define WAKECLIENT_H

#include <QObject>
#include <wakeproto.h>
#include <QtNetwork/QtNetwork>

class WakeClient : public QObject
{
    Q_OBJECT
public:
    explicit WakeClient(QObject *parent = 0);
    ~WakeClient();
signals:

private:
    QTcpSocket *tcpSocket;

public slots:

private slots:

};

#endif // WAKECLIENT_H
