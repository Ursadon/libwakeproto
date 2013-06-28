#include <QCoreApplication>
#include <wakeproto.h>
#include "wakeserver.h"
#include <unistd.h>

void daemonize()
{
    if(QCoreApplication::arguments().contains("--no-daemon"))
        return;
 
    switch (fork())
    {
        case 0:  break;
        case -1: exit(-1);
        default: exit(0);
    }
}

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    WakeServer ws;
    daemonize();
    return a.exec();
}
