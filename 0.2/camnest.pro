###########################################################################################
##		Created using Monkey Studio v1.8.3.0
##
##	Author    : Amine say aminesay@yahoo.fr
##	Project   : camnest
##	FileName  : camnest.pro
##	Date      : 2009-01-30T17:49:04
##	License   : GPL
##	Comment   : Creating using Monkey Studio RAD
##	Home Page   : code.google.com/camnest
##
##	This file is provided AS IS with NO WARRANTY OF ANY KIND, INCLUDING THE
##	WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
##
###########################################################################################

XUPProjectSettings {
	EDITOR	= QMake
	EXECUTE_DEBUG	= camnest_debug
	QT_VERSION	= Qt System (4.4.3)
}

TEMPLATE	= app
LANGUAGE	= C++/Qt4
TARGET	= $$quote(camnest)
CONFIG	+= debug_and_release
BUILD_PATH	= ./build

CONFIG(debug, debug|release) {
	#Debug
	CONFIG	+= console
	unix:TARGET	= $$join(TARGET,,,_debug)
	else:TARGET	= $$join(TARGET,,,d)
	unix:OBJECTS_DIR	= $${BUILD_PATH}/debug/.obj/unix
	win32:OBJECTS_DIR	= $${BUILD_PATH}/debug/.obj/win32
	mac:OBJECTS_DIR	= $${BUILD_PATH}/debug/.obj/mac
	UI_DIR	= $${BUILD_PATH}/debug/.ui
	MOC_DIR	= $${BUILD_PATH}/debug/.moc
	RCC_DIR	= $${BUILD_PATH}/debug/.rcc
} else {
	#Release
	unix:OBJECTS_DIR	= $${BUILD_PATH}/release/.obj/unix
	win32:OBJECTS_DIR	= $${BUILD_PATH}/release/.obj/win32
	mac:OBJECTS_DIR	= $${BUILD_PATH}/release/.obj/mac
	UI_DIR	= $${BUILD_PATH}/release/.ui
	MOC_DIR	= $${BUILD_PATH}/release/.moc
	RCC_DIR	= $${BUILD_PATH}/release/.rcc
}

SOURCES	= src/main.cpp \
	src/test_creationclass.cpp \
	src/renderpath.cpp \
	src/window.cpp \
	src/sheet.cpp \
	src/parts.cpp \
	src/qpointfwithparent.cpp \
	src/gcode.cpp \
	src/gatsp.cpp

LIBS	= ../libs/libdxflib.a
INCLUDEPATH	= src/dxflib
HEADERS	= src/test_creationclass.h \
	src/renderpath.h \
	src/window.h \
	src/sheet.h \
	src/parts.h \
	src/qpointfwithparent.h \
	src/gcode.h \
	src/gatsp.h