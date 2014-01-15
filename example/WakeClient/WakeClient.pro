#-------------------------------------------------
#
# Project created by QtCreator 2013-06-27T17:36:51
#
#-------------------------------------------------

QT       += core network

QT       -= gui

TARGET = WakeClient
CONFIG   += console
CONFIG   -= app_bundle
CONFIG	+= debug
TEMPLATE = app
CLEANDIRS = "debug release"
CLEANFILES += $$TARGET
QMAKE_CLEAN += -r $$CLEANDIRS $$CLEANFILES

SOURCES += main.cpp \
    wakeclient.cpp

CONFIG(debug, debug|release) {
        LIBS += -L$$PWD/../../src/debug/ -lwakeproto
	DESTDIR = debug
} else {
        LIBS += -L$$PWD/../../src/release/ -lwakeproto
	DESTDIR = release
}

INCLUDEPATH += $$PWD/../../src/
DEPENDPATH += $$PWD/../../src/

HEADERS += \
    wakeclient.h
