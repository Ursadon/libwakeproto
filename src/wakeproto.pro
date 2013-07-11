#-------------------------------------------------
#
# Project created by QtCreator 2013-05-08T21:21:31
#
#-------------------------------------------------

QT       -= gui

TEMPLATE = lib
DEFINES += LIBWAKEPROTO_LIBRARY

CLEANDIRS = "debug release"
CLEANFILES = "libwakeproto.so*"
QMAKE_CLEAN += -r $$CLEANDIRS $$CLEANFILES
CONFIG += debug
include(wakeproto.pri)

unix:!symbian {
    maemo5 {
	target.path = /opt/usr/lib
    } else {
	target.path = /usr/lib
    }
    INSTALLS += target
}

CONFIG(debug, debug|release) { 
    DESTDIR = debug
    TARGET = wakeproto
} else { 
    DESTDIR = release
    TARGET = wakeprotod
}
