#-------------------------------------------------
#
# Project created by QtCreator 2013-05-08T21:21:31
#
#-------------------------------------------------

QT       -= gui

TARGET = wakeproto
TEMPLATE = lib
<<<<<<< HEAD

DEFINES += WAKEPROTO_LIBRARY

SOURCES += wakeproto.cpp

HEADERS += wakeproto.h

unix:!symbian {
    maemo5 {
	target.path = /opt/usr/lib
    } else {
	target.path = /usr/lib
    }
    INSTALLS += target
}

CONFIG += staticlib
=======

DEFINES += WAKEPROTO_LIBRARY

SOURCES += wakeproto.cpp

HEADERS += wakeproto.h

unix:!symbian {
    maemo5 {
	target.path = /opt/usr/lib
    } else {
	target.path = /usr/lib
    }
    INSTALLS += target
}
>>>>>>> 62689a3e96b179889a2e8805be3ade342a95c878
