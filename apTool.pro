QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = apTool
TEMPLATE = app

CONFIG += c++11

# OpenCV
INCLUDEPATH += /opt/homebrew/include/opencv4
LIBS += -L/opt/homebrew/lib \
    -lopencv_core \
    -lopencv_imgproc \
    -lopencv_highgui \
    -lopencv_imgcodecs

# ALGLIB
LIBS += -lalglib

SOURCES += main.cpp\
        aptool.cpp \
        s_hull_pro.cpp \
        imageview.cpp \
        lwidget.cpp

HEADERS  += aptool.h \
    s_hull_pro.h \
    imageview.h \
    lwidget.h

FORMS    += aptool.ui \
    imageview.ui

# Silence SDK version warning
CONFIG += sdk_no_version_check