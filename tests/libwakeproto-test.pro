#-------------------------------------------------
#
# Project created by QtCreator 2013-06-24T11:54:27
#
#-------------------------------------------------

QT       += core testlib

QT       -= gui

TARGET = libwakeproto-test
CONFIG   += console
CONFIG   -= app_bundle
CONFIG	+= debug
TEMPLATE = app

CLEANDIRS = "debug release"
CLEANFILES += $$TARGET
QMAKE_CLEAN += -r $$CLEANDIRS $$CLEANFILES


SOURCES += main.cpp \
    test_libwakeproto.cpp

HEADERS += \
    test_libwakeproto.h

CONFIG(debug, debug|release) {
	LIBS += -L$$PWD/../src/debug/ -lwakeproto
} else {
	LIBS += -L$$PWD/../src/release/ -lwakeproto
}

INCLUDEPATH += $$PWD/../src/
DEPENDPATH += $$PWD/../src/
