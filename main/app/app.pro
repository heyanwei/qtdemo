#-------------------------------------------------
#
# Project created by QtCreator 2020-06-14T22:59:35
#
#-------------------------------------------------

QT       += core gui texttospeech sql

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = app
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

CONFIG(debug, debug|release){
DESTDIR = ../bin/Debug
LIBS += -L../bin/Debug

unix|win32: LIBS += -LD:\TestCode\QT\Client\main_make\voice\debug -lvoice
INCLUDEPATH += D:\TestCode\QT\Client\main\voice
DEPENDPATH += D:\TestCode\QT\Client\main_make\voice\debug

unix|win32: LIBS += -LD:\TestCode\QT\Client\main_make\user\debug -luser
INCLUDEPATH += D:\TestCode\QT\Client\main\user
DEPENDPATH += D:\TestCode\QT\Client\main_make\user\debug

} else {
DESTDIR = ../bin/Release
LIBS += -L../bin/Release
}

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
        main.cpp \
        mainwindow.cpp

HEADERS += \
        mainwindow.h

FORMS += \
        mainwindow.ui
