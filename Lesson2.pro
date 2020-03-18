QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    dialog.cpp

HEADERS += \
    dialog.h

FORMS += \
    dialog.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
CONFIG(release, debug|release) { BUILDTYPE = release }
CONFIG(debug, debug|release) { BUILDTYPE = debug }
QMAKE_POST_LINK = windeployqt $$shell_quote($${OUT_PWD}/$${BUILDTYPE}/$${TARGET}.exe)

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../build-Lesson4-Desktop_Qt_5_14_1_MSVC2017_64bit-All/release/ -lLesson4
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../build-Lesson4-Desktop_Qt_5_14_1_MSVC2017_64bit-All/debug/ -lLesson4
else:unix: LIBS += -L$$PWD/../build-Lesson4-Desktop_Qt_5_14_1_MSVC2017_64bit-All/ -lLesson4

INCLUDEPATH += $$PWD/../Lesson4
DEPENDPATH += $$PWD/../Lesson4

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../build-Lesson4-Desktop_Qt_5_14_1_MSVC2017_64bit-All/release/libLesson4.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../build-Lesson4-Desktop_Qt_5_14_1_MSVC2017_64bit-All/debug/libLesson4.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../build-Lesson4-Desktop_Qt_5_14_1_MSVC2017_64bit-All/release/Lesson4.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../build-Lesson4-Desktop_Qt_5_14_1_MSVC2017_64bit-All/debug/Lesson4.lib
else:unix: PRE_TARGETDEPS += $$PWD/../build-Lesson4-Desktop_Qt_5_14_1_MSVC2017_64bit-All/libLesson4.a
