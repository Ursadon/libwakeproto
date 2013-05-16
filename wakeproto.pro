#-------------------------------------------------
#
# Project created by QtCreator 2013-05-08T21:21:31
#
#-------------------------------------------------

QT       -= gui

#TARGET = wakeproto
TEMPLATE = lib

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

