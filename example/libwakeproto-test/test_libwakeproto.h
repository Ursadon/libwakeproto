#ifndef TEST_LIBWAKEPROTO_H
#define TEST_LIBWAKEPROTO_H

#include <QObject>
#include <wakeproto.h>

class Test_libwakeproto : public QObject
{
    Q_OBJECT
public:
    explicit Test_libwakeproto(QObject *parent = 0);
    Wakeproto lwp;
signals:
    
public slots:

private slots: // must be private
    void lwp_test_tx();
    void lwp_test_rx();
    void lwp_test_rx_continuous();
};

#endif // TEST_LIBWAKEPROTO_H
