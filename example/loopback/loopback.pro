QT       -= gui

TARGET = loopback
CONFIG -= app_bundle
TEMPLATE = app
SOURCES += main.cpp

LIBS += -L/home/nikolay/Projects/qt5-wakeproto/ -lwakeproto
INCLUDEPATH += /home/nikolay/Projects/qt5-wakeproto/
