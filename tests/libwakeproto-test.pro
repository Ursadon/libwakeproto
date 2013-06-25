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

TEMPLATE = app


SOURCES += main.cpp \
    test_libwakeproto.cpp

HEADERS += \
    test_libwakeproto.h

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../release/ -lwakeproto
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../debug/ -lwakeproto
else:unix: LIBS += -L$$PWD/../../ -lwakeproto

INCLUDEPATH += $$PWD/../
DEPENDPATH += $$PWD/../
