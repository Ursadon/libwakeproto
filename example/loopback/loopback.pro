QT       -= gui

TARGET = loopback
CONFIG -= app_bundle
TEMPLATE = app
SOURCES += main.cpp
HEADERS += loopback.h

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../release/ -lwakeproto
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../debug/ -lwakeproto
else:unix: LIBS += -L$$PWD/../../ -lwakeproto

INCLUDEPATH += $$PWD/../../
DEPENDPATH += $$PWD/../../
