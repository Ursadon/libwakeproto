#include <QCoreApplication>
#define FEND 0xC0
#define FESC 0xDB
#define TFEND 0xDC
#define TFESC 0xDD
class Wakeproto : public QObject
{
	Q_OBJECT
	public:
		Wakeproto();
		void test();
		QByteArray createpacket(unsigned char address, unsigned char cmd, QByteArray data);
	private:
		QByteArray stuffing(QByteArray packet);
};
