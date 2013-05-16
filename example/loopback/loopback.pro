QT       -= gui

TARGET = loopback
CONFIG -= app_bundle
TEMPLATE = app
SOURCES += main.cpp

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../release/ -llibwakeproto
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../debug/ -llibwakeproto
else:unix: LIBS += -L$$PWD/../../ -llibwakeproto

INCLUDEPATH += $$PWD/../../
DEPENDPATH += $$PWD/../../

win32:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../release/libwakeproto.lib
else:win32:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../debug/libwakeproto.lib
else:unix: PRE_TARGETDEPS += $$PWD/../../liblibwakeproto.a
