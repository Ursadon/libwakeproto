#include <QObject>
#include <wakeproto.h>
class looptest : public QObject
{
        Q_OBJECT
        public:
                 looptest();
                ~looptest();
		Wakeproto sx;
        private slots:
                void packet_rcvd(QByteArray packet);
};

