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
		int getpacket(QByteArray datastream);
	private:
		enum packet_offset { fend = 0, addr, cmd, n, datastream, crc };
		bool packet_started, data_started;
		unsigned char num_of_bytes;
		QByteArray bytes;
		QByteArray stuffing(QByteArray packet);
};
