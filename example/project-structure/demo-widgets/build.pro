#-------------------------------------------------
#
# Project created by QtCreator 2018-07-04T22:13:53
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = demo
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


# http://doc.qt.io/qt-5/qmake-variable-reference.html#sources
SOURCES += \
	source/main.cpp \
	source/mainwindow.cpp

# http://doc.qt.io/qt-5/qmake-variable-reference.html#headers
HEADERS += \
	include/mainwindow.h

# http://doc.qt.io/qt-5/qmake-variable-reference.html#forms
FORMS += \
	asset/mainwindow.ui

# http://doc.qt.io/qt-5/qmake-variable-reference.html#includepath
INCLUDEPATH += \
	include

# http://doc.qt.io/qt-5/qmake-variable-reference.html#destdir
DESTDIR = \
	build/bin

# http://doc.qt.io/qt-5/qmake-variable-reference.html#objects-dir
OBJECTS_DIR = \
	build/obj

# http://doc.qt.io/qt-5/qmake-variable-reference.html#moc-dir
MOC_DIR = \
	build/moc

# http://doc.qt.io/qt-5/qmake-variable-reference.html#ui-dir
UI_DIR = \
	build/ui
