#############################################################################
# Makefile for building: libwakeproto.so.1.0.0
# Generated by qmake (3.0) (Qt 5.0.2) on: Wed May 8 13:09:24 2013
# Project:  wakeproto.pro
# Template: lib
# Command: /home/nikolay/qtbase-opensource-src-5.0.2/bin/qmake -o Makefile wakeproto.pro
#############################################################################

MAKEFILE      = Makefile

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DWAKEPROTO -DQT_CORE_LIB
CFLAGS        = -pipe -g -Wall -W -D_REENTRANT -fPIC $(DEFINES)
CXXFLAGS      = -pipe -g -Wall -W -D_REENTRANT -fPIC $(DEFINES)
INCPATH       = -I../../qtbase-opensource-src-5.0.2/mkspecs/linux-g++ -I. -I../../qtbase-opensource-src-5.0.2/include -I../../qtbase-opensource-src-5.0.2/include/QtCore -I.
LINK          = g++
LFLAGS        = -Wl,-rpath,/usr/local/Qt-5.0.2/lib -shared -Wl,-soname,libwakeproto.so.1
LIBS          = $(SUBLIBS) -L/home/nikolay/qtbase-opensource-src-5.0.2/lib -lQt5Core -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /home/nikolay/qtbase-opensource-src-5.0.2/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = wakeproto.cpp moc_wakeproto.cpp
OBJECTS       = wakeproto.o \
		moc_wakeproto.o
DIST          = ../../qtbase-opensource-src-5.0.2/mkspecs/features/spec_pre.prf \
		../../qtbase-opensource-src-5.0.2/mkspecs/common/shell-unix.conf \
		../../qtbase-opensource-src-5.0.2/mkspecs/common/unix.conf \
		../../qtbase-opensource-src-5.0.2/mkspecs/common/linux.conf \
		../../qtbase-opensource-src-5.0.2/mkspecs/common/gcc-base.conf \
		../../qtbase-opensource-src-5.0.2/mkspecs/common/gcc-base-unix.conf \
		../../qtbase-opensource-src-5.0.2/mkspecs/common/g++-base.conf \
		../../qtbase-opensource-src-5.0.2/mkspecs/common/g++-unix.conf \
		../../qtbase-opensource-src-5.0.2/mkspecs/qconfig.pri \
		../../qtbase-opensource-src-5.0.2/mkspecs/modules-inst/qt_lib_bootstrap.pri \
		../../qtbase-opensource-src-5.0.2/mkspecs/modules/qt_lib_bootstrap.pri \
		../../qtbase-opensource-src-5.0.2/mkspecs/modules-inst/qt_lib_concurrent.pri \
		../../qtbase-opensource-src-5.0.2/mkspecs/modules/qt_lib_concurrent.pri \
		../../qtbase-opensource-src-5.0.2/mkspecs/modules-inst/qt_lib_core.pri \
		../../qtbase-opensource-src-5.0.2/mkspecs/modules/qt_lib_core.pri \
		../../qtbase-opensource-src-5.0.2/mkspecs/modules-inst/qt_lib_network.pri \
		../../qtbase-opensource-src-5.0.2/mkspecs/modules/qt_lib_network.pri \
		../../qtbase-opensource-src-5.0.2/mkspecs/modules-inst/qt_lib_sql.pri \
		../../qtbase-opensource-src-5.0.2/mkspecs/modules/qt_lib_sql.pri \
		../../qtbase-opensource-src-5.0.2/mkspecs/modules-inst/qt_lib_testlib.pri \
		../../qtbase-opensource-src-5.0.2/mkspecs/modules/qt_lib_testlib.pri \
		../../qtbase-opensource-src-5.0.2/mkspecs/modules-inst/qt_lib_xml.pri \
		../../qtbase-opensource-src-5.0.2/mkspecs/modules/qt_lib_xml.pri \
		../../qtbase-opensource-src-5.0.2/mkspecs/modules/qt_tool_moc.pri \
		../../qtbase-opensource-src-5.0.2/mkspecs/modules/qt_tool_qdoc.pri \
		../../qtbase-opensource-src-5.0.2/mkspecs/modules/qt_tool_rcc.pri \
		../../qtbase-opensource-src-5.0.2/mkspecs/modules/qt_tool_syncqt.pri \
		../../qtbase-opensource-src-5.0.2/mkspecs/features/qt_functions.prf \
		../../qtbase-opensource-src-5.0.2/mkspecs/features/qt_config.prf \
		../../qtbase-opensource-src-5.0.2/mkspecs/linux-g++/qmake.conf \
		../../qtbase-opensource-src-5.0.2/mkspecs/features/spec_post.prf \
		../../qtbase-opensource-src-5.0.2/mkspecs/features/exclusive_builds.prf \
		../../qtbase-opensource-src-5.0.2/mkspecs/features/default_pre.prf \
		../../qtbase-opensource-src-5.0.2/mkspecs/features/unix/default_pre.prf \
		../../qtbase-opensource-src-5.0.2/mkspecs/features/resolve_config.prf \
		../../qtbase-opensource-src-5.0.2/mkspecs/features/default_post.prf \
		../../qtbase-opensource-src-5.0.2/mkspecs/features/unix/gdb_dwarf_index.prf \
		../../qtbase-opensource-src-5.0.2/mkspecs/features/warn_on.prf \
		../../qtbase-opensource-src-5.0.2/mkspecs/features/qt.prf \
		../../qtbase-opensource-src-5.0.2/mkspecs/features/resources.prf \
		../../qtbase-opensource-src-5.0.2/mkspecs/features/moc.prf \
		../../qtbase-opensource-src-5.0.2/mkspecs/features/unix/thread.prf \
		../../qtbase-opensource-src-5.0.2/mkspecs/features/wayland-scanner.prf \
		../../qtbase-opensource-src-5.0.2/mkspecs/features/testcase_targets.prf \
		../../qtbase-opensource-src-5.0.2/mkspecs/features/exceptions.prf \
		../../qtbase-opensource-src-5.0.2/mkspecs/features/yacc.prf \
		../../qtbase-opensource-src-5.0.2/mkspecs/features/lex.prf \
		wakeproto.pro \
		wakeproto.pro
QMAKE_TARGET  = wakeproto
DESTDIR       = 
TARGET        = libwakeproto.so.1.0.0
TARGETA       = libwakeproto.a
TARGETD       = libwakeproto.so.1.0.0
TARGET0       = libwakeproto.so
TARGET1       = libwakeproto.so.1
TARGET2       = libwakeproto.so.1.0


first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile  $(TARGET)

$(TARGET):  $(OBJECTS) $(SUBLIBS) $(OBJCOMP)  
	-$(DEL_FILE) $(TARGET) $(TARGET0) $(TARGET1) $(TARGET2)
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(LIBS) $(OBJCOMP)
	-ln -s $(TARGET) $(TARGET0)
	-ln -s $(TARGET) $(TARGET1)
	-ln -s $(TARGET) $(TARGET2)
	{ test -z "$(DESTDIR)" || cd "$(DESTDIR)"; } && test $$(gdb --version | sed -e 's,[^0-9]\+\([0-9]\)\.\([0-9]\).*,\1\2,;q') -gt 72 && gdb --nx --batch --quiet -ex 'set confirm off' -ex "save gdb-index ." -ex quit '$(TARGET)' && test -f $(TARGET).gdb-index && objcopy --add-section '.gdb_index=$(TARGET).gdb-index' --set-section-flags '.gdb_index=readonly' '$(TARGET)' '$(TARGET)' && rm -f $(TARGET).gdb-index || true



staticlib: $(TARGETA)

$(TARGETA):  $(OBJECTS) $(OBJCOMP) 
	-$(DEL_FILE) $(TARGETA) 
	$(AR) $(TARGETA) $(OBJECTS)

Makefile: wakeproto.pro ../../qtbase-opensource-src-5.0.2/mkspecs/linux-g++/qmake.conf ../../qtbase-opensource-src-5.0.2/mkspecs/features/spec_pre.prf \
		../../qtbase-opensource-src-5.0.2/mkspecs/common/shell-unix.conf \
		../../qtbase-opensource-src-5.0.2/mkspecs/common/unix.conf \
		../../qtbase-opensource-src-5.0.2/mkspecs/common/linux.conf \
		../../qtbase-opensource-src-5.0.2/mkspecs/common/gcc-base.conf \
		../../qtbase-opensource-src-5.0.2/mkspecs/common/gcc-base-unix.conf \
		../../qtbase-opensource-src-5.0.2/mkspecs/common/g++-base.conf \
		../../qtbase-opensource-src-5.0.2/mkspecs/common/g++-unix.conf \
		../../qtbase-opensource-src-5.0.2/mkspecs/qconfig.pri \
		../../qtbase-opensource-src-5.0.2/mkspecs/modules-inst/qt_lib_bootstrap.pri \
		../../qtbase-opensource-src-5.0.2/mkspecs/modules/qt_lib_bootstrap.pri \
		../../qtbase-opensource-src-5.0.2/mkspecs/modules-inst/qt_lib_concurrent.pri \
		../../qtbase-opensource-src-5.0.2/mkspecs/modules/qt_lib_concurrent.pri \
		../../qtbase-opensource-src-5.0.2/mkspecs/modules-inst/qt_lib_core.pri \
		../../qtbase-opensource-src-5.0.2/mkspecs/modules/qt_lib_core.pri \
		../../qtbase-opensource-src-5.0.2/mkspecs/modules-inst/qt_lib_network.pri \
		../../qtbase-opensource-src-5.0.2/mkspecs/modules/qt_lib_network.pri \
		../../qtbase-opensource-src-5.0.2/mkspecs/modules-inst/qt_lib_sql.pri \
		../../qtbase-opensource-src-5.0.2/mkspecs/modules/qt_lib_sql.pri \
		../../qtbase-opensource-src-5.0.2/mkspecs/modules-inst/qt_lib_testlib.pri \
		../../qtbase-opensource-src-5.0.2/mkspecs/modules/qt_lib_testlib.pri \
		../../qtbase-opensource-src-5.0.2/mkspecs/modules-inst/qt_lib_xml.pri \
		../../qtbase-opensource-src-5.0.2/mkspecs/modules/qt_lib_xml.pri \
		../../qtbase-opensource-src-5.0.2/mkspecs/modules/qt_tool_moc.pri \
		../../qtbase-opensource-src-5.0.2/mkspecs/modules/qt_tool_qdoc.pri \
		../../qtbase-opensource-src-5.0.2/mkspecs/modules/qt_tool_rcc.pri \
		../../qtbase-opensource-src-5.0.2/mkspecs/modules/qt_tool_syncqt.pri \
		../../qtbase-opensource-src-5.0.2/mkspecs/features/qt_functions.prf \
		../../qtbase-opensource-src-5.0.2/mkspecs/features/qt_config.prf \
		../../qtbase-opensource-src-5.0.2/mkspecs/linux-g++/qmake.conf \
		../../qtbase-opensource-src-5.0.2/mkspecs/features/spec_post.prf \
		../../qtbase-opensource-src-5.0.2/mkspecs/features/exclusive_builds.prf \
		../../qtbase-opensource-src-5.0.2/mkspecs/features/default_pre.prf \
		../../qtbase-opensource-src-5.0.2/mkspecs/features/unix/default_pre.prf \
		../../qtbase-opensource-src-5.0.2/mkspecs/features/resolve_config.prf \
		../../qtbase-opensource-src-5.0.2/mkspecs/features/default_post.prf \
		../../qtbase-opensource-src-5.0.2/mkspecs/features/unix/gdb_dwarf_index.prf \
		../../qtbase-opensource-src-5.0.2/mkspecs/features/warn_on.prf \
		../../qtbase-opensource-src-5.0.2/mkspecs/features/qt.prf \
		../../qtbase-opensource-src-5.0.2/mkspecs/features/resources.prf \
		../../qtbase-opensource-src-5.0.2/mkspecs/features/moc.prf \
		../../qtbase-opensource-src-5.0.2/mkspecs/features/unix/thread.prf \
		../../qtbase-opensource-src-5.0.2/mkspecs/features/wayland-scanner.prf \
		../../qtbase-opensource-src-5.0.2/mkspecs/features/testcase_targets.prf \
		../../qtbase-opensource-src-5.0.2/mkspecs/features/exceptions.prf \
		../../qtbase-opensource-src-5.0.2/mkspecs/features/yacc.prf \
		../../qtbase-opensource-src-5.0.2/mkspecs/features/lex.prf \
		wakeproto.pro \
		/home/nikolay/qtbase-opensource-src-5.0.2/lib/libQt5Core.prl
	$(QMAKE) -o Makefile wakeproto.pro
../../qtbase-opensource-src-5.0.2/mkspecs/features/spec_pre.prf:
../../qtbase-opensource-src-5.0.2/mkspecs/common/shell-unix.conf:
../../qtbase-opensource-src-5.0.2/mkspecs/common/unix.conf:
../../qtbase-opensource-src-5.0.2/mkspecs/common/linux.conf:
../../qtbase-opensource-src-5.0.2/mkspecs/common/gcc-base.conf:
../../qtbase-opensource-src-5.0.2/mkspecs/common/gcc-base-unix.conf:
../../qtbase-opensource-src-5.0.2/mkspecs/common/g++-base.conf:
../../qtbase-opensource-src-5.0.2/mkspecs/common/g++-unix.conf:
../../qtbase-opensource-src-5.0.2/mkspecs/qconfig.pri:
../../qtbase-opensource-src-5.0.2/mkspecs/modules-inst/qt_lib_bootstrap.pri:
../../qtbase-opensource-src-5.0.2/mkspecs/modules/qt_lib_bootstrap.pri:
../../qtbase-opensource-src-5.0.2/mkspecs/modules-inst/qt_lib_concurrent.pri:
../../qtbase-opensource-src-5.0.2/mkspecs/modules/qt_lib_concurrent.pri:
../../qtbase-opensource-src-5.0.2/mkspecs/modules-inst/qt_lib_core.pri:
../../qtbase-opensource-src-5.0.2/mkspecs/modules/qt_lib_core.pri:
../../qtbase-opensource-src-5.0.2/mkspecs/modules-inst/qt_lib_network.pri:
../../qtbase-opensource-src-5.0.2/mkspecs/modules/qt_lib_network.pri:
../../qtbase-opensource-src-5.0.2/mkspecs/modules-inst/qt_lib_sql.pri:
../../qtbase-opensource-src-5.0.2/mkspecs/modules/qt_lib_sql.pri:
../../qtbase-opensource-src-5.0.2/mkspecs/modules-inst/qt_lib_testlib.pri:
../../qtbase-opensource-src-5.0.2/mkspecs/modules/qt_lib_testlib.pri:
../../qtbase-opensource-src-5.0.2/mkspecs/modules-inst/qt_lib_xml.pri:
../../qtbase-opensource-src-5.0.2/mkspecs/modules/qt_lib_xml.pri:
../../qtbase-opensource-src-5.0.2/mkspecs/modules/qt_tool_moc.pri:
../../qtbase-opensource-src-5.0.2/mkspecs/modules/qt_tool_qdoc.pri:
../../qtbase-opensource-src-5.0.2/mkspecs/modules/qt_tool_rcc.pri:
../../qtbase-opensource-src-5.0.2/mkspecs/modules/qt_tool_syncqt.pri:
../../qtbase-opensource-src-5.0.2/mkspecs/features/qt_functions.prf:
../../qtbase-opensource-src-5.0.2/mkspecs/features/qt_config.prf:
../../qtbase-opensource-src-5.0.2/mkspecs/linux-g++/qmake.conf:
../../qtbase-opensource-src-5.0.2/mkspecs/features/spec_post.prf:
../../qtbase-opensource-src-5.0.2/mkspecs/features/exclusive_builds.prf:
../../qtbase-opensource-src-5.0.2/mkspecs/features/default_pre.prf:
../../qtbase-opensource-src-5.0.2/mkspecs/features/unix/default_pre.prf:
../../qtbase-opensource-src-5.0.2/mkspecs/features/resolve_config.prf:
../../qtbase-opensource-src-5.0.2/mkspecs/features/default_post.prf:
../../qtbase-opensource-src-5.0.2/mkspecs/features/unix/gdb_dwarf_index.prf:
../../qtbase-opensource-src-5.0.2/mkspecs/features/warn_on.prf:
../../qtbase-opensource-src-5.0.2/mkspecs/features/qt.prf:
../../qtbase-opensource-src-5.0.2/mkspecs/features/resources.prf:
../../qtbase-opensource-src-5.0.2/mkspecs/features/moc.prf:
../../qtbase-opensource-src-5.0.2/mkspecs/features/unix/thread.prf:
../../qtbase-opensource-src-5.0.2/mkspecs/features/wayland-scanner.prf:
../../qtbase-opensource-src-5.0.2/mkspecs/features/testcase_targets.prf:
../../qtbase-opensource-src-5.0.2/mkspecs/features/exceptions.prf:
../../qtbase-opensource-src-5.0.2/mkspecs/features/yacc.prf:
../../qtbase-opensource-src-5.0.2/mkspecs/features/lex.prf:
wakeproto.pro:
/home/nikolay/qtbase-opensource-src-5.0.2/lib/libQt5Core.prl:
qmake: FORCE
	@$(QMAKE) -o Makefile wakeproto.pro

qmake_all: FORCE

dist: 
	@test -d .tmp/wakeproto1.0.0 || mkdir -p .tmp/wakeproto1.0.0
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/wakeproto1.0.0/ && $(COPY_FILE) --parents wakeproto.h .tmp/wakeproto1.0.0/ && $(COPY_FILE) --parents wakeproto.cpp .tmp/wakeproto1.0.0/ && (cd `dirname .tmp/wakeproto1.0.0` && $(TAR) wakeproto1.0.0.tar wakeproto1.0.0 && $(COMPRESS) wakeproto1.0.0.tar) && $(MOVE) `dirname .tmp/wakeproto1.0.0`/wakeproto1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/wakeproto1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) $(TARGET0) $(TARGET1) $(TARGET2) $(TARGETA)
	-$(DEL_FILE) Makefile


mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

check: first

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_wayland-server-header_make_all:
compiler_wayland-server-header_clean:
compiler_wayland-client-header_make_all:
compiler_wayland-client-header_clean:
compiler_moc_header_make_all: moc_wakeproto.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_wakeproto.cpp
moc_wakeproto.cpp: ../../qtbase-opensource-src-5.0.2/include/QtCore/QCoreApplication \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qcoreapplication.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/kernel/qcoreapplication.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qobject.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/kernel/qobject.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qobjectdefs.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/kernel/qobjectdefs.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qnamespace.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/global/qnamespace.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qglobal.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/global/qglobal.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qconfig.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/global/qconfig.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qfeatures.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/global/qfeatures.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qsystemdetection.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/global/qsystemdetection.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qcompilerdetection.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/global/qcompilerdetection.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qprocessordetection.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/global/qprocessordetection.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qlogging.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/global/qlogging.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qflags.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/global/qflags.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qtypeinfo.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/global/qtypeinfo.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qtypetraits.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/global/qtypetraits.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qsysinfo.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/global/qsysinfo.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qobjectdefs_impl.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/kernel/qobjectdefs_impl.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qstring.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/tools/qstring.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qchar.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/tools/qchar.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qbytearray.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/tools/qbytearray.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qrefcount.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/tools/qrefcount.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/thread/qatomic.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qbasicatomic.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/thread/qbasicatomic.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic_bootstrap.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/arch/qatomic_bootstrap.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qgenericatomic.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/thread/qgenericatomic.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic_msvc.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/arch/qatomic_msvc.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic_integrity.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/arch/qatomic_integrity.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qoldbasicatomic.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/thread/qoldbasicatomic.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic_vxworks.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/arch/qatomic_vxworks.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic_power.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/arch/qatomic_power.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic_alpha.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/arch/qatomic_alpha.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic_armv7.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/arch/qatomic_armv7.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic_armv6.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/arch/qatomic_armv6.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic_armv5.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/arch/qatomic_armv5.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic_bfin.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/arch/qatomic_bfin.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic_ia64.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/arch/qatomic_ia64.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic_mips.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/arch/qatomic_mips.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic_s390.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/arch/qatomic_s390.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic_sh4a.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/arch/qatomic_sh4a.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic_sparc.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/arch/qatomic_sparc.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic_x86.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/arch/qatomic_x86.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic_cxx11.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/arch/qatomic_cxx11.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic_gcc.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/arch/qatomic_gcc.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic_unix.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/arch/qatomic_unix.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qarraydata.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/tools/qarraydata.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qstringbuilder.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/tools/qstringbuilder.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qlist.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/tools/qlist.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qalgorithms.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/tools/qalgorithms.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qiterator.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/tools/qiterator.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qcoreevent.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/kernel/qcoreevent.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qscopedpointer.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/tools/qscopedpointer.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qmetatype.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/kernel/qmetatype.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qvarlengtharray.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/tools/qvarlengtharray.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qcontainerfwd.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/tools/qcontainerfwd.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qisenum.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/global/qisenum.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qobject_impl.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/kernel/qobject_impl.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qeventloop.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/kernel/qeventloop.h \
		wakeproto.h
	/home/nikolay/qtbase-opensource-src-5.0.2/bin/moc $(DEFINES) $(INCPATH) wakeproto.h -o moc_wakeproto.cpp

compiler_wayland-code_make_all:
compiler_wayland-code_clean:
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean 

####### Compile

wakeproto.o: wakeproto.cpp ../../qtbase-opensource-src-5.0.2/include/QtCore/QCoreApplication \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qcoreapplication.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/kernel/qcoreapplication.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qobject.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/kernel/qobject.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qobjectdefs.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/kernel/qobjectdefs.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qnamespace.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/global/qnamespace.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qglobal.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/global/qglobal.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qconfig.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/global/qconfig.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qfeatures.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/global/qfeatures.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qsystemdetection.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/global/qsystemdetection.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qcompilerdetection.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/global/qcompilerdetection.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qprocessordetection.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/global/qprocessordetection.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qlogging.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/global/qlogging.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qflags.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/global/qflags.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qtypeinfo.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/global/qtypeinfo.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qtypetraits.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/global/qtypetraits.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qsysinfo.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/global/qsysinfo.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qobjectdefs_impl.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/kernel/qobjectdefs_impl.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qstring.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/tools/qstring.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qchar.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/tools/qchar.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qbytearray.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/tools/qbytearray.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qrefcount.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/tools/qrefcount.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/thread/qatomic.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qbasicatomic.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/thread/qbasicatomic.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic_bootstrap.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/arch/qatomic_bootstrap.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qgenericatomic.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/thread/qgenericatomic.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic_msvc.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/arch/qatomic_msvc.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic_integrity.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/arch/qatomic_integrity.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qoldbasicatomic.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/thread/qoldbasicatomic.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic_vxworks.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/arch/qatomic_vxworks.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic_power.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/arch/qatomic_power.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic_alpha.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/arch/qatomic_alpha.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic_armv7.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/arch/qatomic_armv7.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic_armv6.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/arch/qatomic_armv6.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic_armv5.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/arch/qatomic_armv5.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic_bfin.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/arch/qatomic_bfin.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic_ia64.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/arch/qatomic_ia64.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic_mips.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/arch/qatomic_mips.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic_s390.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/arch/qatomic_s390.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic_sh4a.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/arch/qatomic_sh4a.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic_sparc.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/arch/qatomic_sparc.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic_x86.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/arch/qatomic_x86.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic_cxx11.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/arch/qatomic_cxx11.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic_gcc.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/arch/qatomic_gcc.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qatomic_unix.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/arch/qatomic_unix.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qarraydata.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/tools/qarraydata.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qstringbuilder.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/tools/qstringbuilder.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qlist.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/tools/qlist.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qalgorithms.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/tools/qalgorithms.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qiterator.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/tools/qiterator.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qcoreevent.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/kernel/qcoreevent.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qscopedpointer.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/tools/qscopedpointer.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qmetatype.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/kernel/qmetatype.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qvarlengtharray.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/tools/qvarlengtharray.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qcontainerfwd.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/tools/qcontainerfwd.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qisenum.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/global/qisenum.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qobject_impl.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/kernel/qobject_impl.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qeventloop.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/kernel/qeventloop.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/QDebug \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qdebug.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/io/qdebug.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qhash.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/tools/qhash.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qpair.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/tools/qpair.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qmap.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/tools/qmap.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qtextstream.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/io/qtextstream.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qiodevice.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/io/qiodevice.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qlocale.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/tools/qlocale.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qvariant.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/kernel/qvariant.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qshareddata.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/tools/qshareddata.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qvector.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/tools/qvector.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qpoint.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/tools/qpoint.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qset.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/tools/qset.h \
		../../qtbase-opensource-src-5.0.2/include/QtCore/qcontiguouscache.h \
		../../qtbase-opensource-src-5.0.2/src/corelib/tools/qcontiguouscache.h \
		wakeproto.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o wakeproto.o wakeproto.cpp

moc_wakeproto.o: moc_wakeproto.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_wakeproto.o moc_wakeproto.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

