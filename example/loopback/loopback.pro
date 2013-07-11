QT       -= gui

TARGET = loopback
CONFIG -= app_bundle
CONFIG  += debug
TEMPLATE = app
SOURCES += main.cpp
HEADERS += loopback.h

CLEANDIRS = "debug release"
CLEANFILES += $$TARGET
QMAKE_CLEAN += -r $$CLEANDIRS $$CLEANFILES

CONFIG(debug, debug|release) {
        LIBS += -L$$PWD/../../src/debug/ -lwakeproto
} else {
        LIBS += -L$$PWD/../../src/release/ -lwakeproto
}

INCLUDEPATH += $$PWD/../../src/
DEPENDPATH += $$PWD/../../src/

