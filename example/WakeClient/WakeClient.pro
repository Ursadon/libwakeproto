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

TEMPLATE = app


SOURCES += main.cpp \
    wakeclient.cpp

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../release/ -lwakeproto
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../debug/ -lwakeproto
else:unix: LIBS += -L$$PWD/../../ -lwakeproto

INCLUDEPATH += $$PWD/../../
DEPENDPATH += $$PWD/../../

HEADERS += \
    wakeclient.h
