#-------------------------------------------------
#
# Project created by QtCreator 2013-06-25T17:27:31
#
#-------------------------------------------------

QT       += core network

QT       -= gui

TARGET = WakeServer
CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app


SOURCES += main.cpp \
    wakeserver.cpp

HEADERS += \
    wakeserver.h

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../release/ -lwakeproto
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../debug/ -lwakeproto
else:unix: LIBS += -L$$PWD/../../ -lwakeproto

INCLUDEPATH += $$PWD/../../
DEPENDPATH += $$PWD/../../
