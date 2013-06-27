#include <QCoreApplication>
#include "wakeclient.h"

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    WakeClient wc;
    return a.exec();
}
