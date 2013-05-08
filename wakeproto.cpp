#include <QCoreApplication>
#include <QDebug>
#include "wakeproto.h"
 
Wakeproto::Wakeproto()
{
	qDebug() << "Wakeproto module loaded" << endl;
}
void Wakeproto::test() {
	qDebug() << "Wakeproto init completed" << endl;
}

