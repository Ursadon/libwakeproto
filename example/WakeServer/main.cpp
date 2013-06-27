#include <QCoreApplication>
#include <wakeproto.h>
#include "wakeserver.h"

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    WakeServer ws;

    return a.exec();
}
