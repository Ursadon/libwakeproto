#include <QCoreApplication>
<<<<<<< HEAD
//#include <QtCore/qglobal.h>
//#if defined(WAKEPROTO_LIBRARY)
//#  define WAKEPROTOSHARED_EXPORT Q_DECL_EXPORT
//#else
//#  define WAKEPROTOSHARED_EXPORT Q_DECL_IMPORT
//#endif
=======
#include <QtCore/qglobal.h>
#if defined(WAKEPROTO_LIBRARY)
#  define WAKEPROTOSHARED_EXPORT Q_DECL_EXPORT
#else
#  define WAKEPROTOSHARED_EXPORT Q_DECL_IMPORT
#endif
>>>>>>> 62689a3e96b179889a2e8805be3ade342a95c878


#define FEND 0xC0
#define FESC 0xDB
#define TFEND 0xDC
#define TFESC 0xDD
<<<<<<< HEAD
//WAKEPROTOSHARED_EXPORT
class Wakeproto : public QObject
=======
class WAKEPROTOSHARED_EXPORT Wakeproto : public QObject
>>>>>>> 62689a3e96b179889a2e8805be3ade342a95c878
{
	Q_OBJECT
	public:
		Wakeproto();
		~Wakeproto();
		void test();
		QByteArray createpacket(unsigned char address, unsigned char cmd, QByteArray data);
		int getpacket(QByteArray datastream);
	private:
		enum PacketHeader { fend = 0, address, cmd, numofbytes, datastream, crc};
		bool packet_started, data_started;
		unsigned char num_of_bytes;
		QByteArray rx_temp_packet, rx_packet_data;
		QByteArray stuffing(QByteArray packet);
};
