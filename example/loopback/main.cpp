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
	arg.append("111");
	QByteArray data;
	data = sx.createpacket(201,2,arg);
	qDebug() << "Sended packet: ["  <<data.size() <<"] "  << data ;
	sx.getpacket(data);
    return app.exec();
}
