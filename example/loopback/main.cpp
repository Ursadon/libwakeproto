#include <QtCore/QCoreApplication>
#include <QDebug>
#include <wakeproto.h>

int main(int argc, char *argv[])
{
	QCoreApplication app(argc, argv);
        qDebug() << "Program started";
	if (argc != 2) {
		qDebug() << "Not enough args";
		return 1;
	}
	Wakeproto sx;
	QByteArray senddata;

	sx.test();
	senddata.append(argv[1]);
	QByteArray data;
	data = sx.createpacket(201,2,senddata);
	qDebug() << "Sended packet: ["  <<data.size() <<"] "  << data ;
	sx.getpacket(data);
	return app.exec();
}

