#include <QCoreApplication>
#include <QTest>
#include "test_libwakeproto.h"
#include <wakeproto.h>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    QTest::qExec(new Test_libwakeproto, argc, argv);
    return a.exec();
}
