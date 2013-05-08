#include <QtCore/QCoreApplication>
#include <QDebug>
#include <wakeproto.h>

int main(int argc, char *argv[])
{
    QCoreApplication app(argc, argv);
    Wakeproto sx;
    QByteArray arg;

    sx.test();

    qDebug() << "Program started"; 
    arg.append(argv[1]);
    QByteArray data = sx.createpacket(201,2,arg);
    qDebug() << "Sened packet: ["  <<data.size() <<"] "  << data ;
    sx.getpacket(data);	
    return app.exec();
}
