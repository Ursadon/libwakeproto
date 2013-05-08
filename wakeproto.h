#include <QCoreApplication>

class Wakeproto : public QObject
{
	Q_OBJECT
	public:
		Wakeproto();
		void test();
};
