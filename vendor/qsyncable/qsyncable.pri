TEMPLATE = lib
QT += qml
CONFIG += qmltypes staticlib

QML_IMPORT_NAME = QSyncable
QML_IMPORT_MAJOR_VERSION = 1
QML_IMPORT_MINOR_VERSION = 0

TARGET = $$qtLibraryTarget(qsyncable)

INCLUDEPATH += $$PWD

HEADERS += \
    $$PWD/qsdiffrunner.h \
    $$PWD/qspatch.h \
    $$PWD/qspatchable.h \
    $$PWD/qslistmodel.h \
    $$PWD/qsuuid.h \
    $$PWD/priv/qsdiffrunneralgo_p.h \
    $$PWD/priv/qstree.h \
    $$PWD/priv/qstreenode.h \
    $$PWD/qsjsonlistmodel.h \
    $$PWD/QSDiffRunner \
    $$PWD/QSListModel \
    $$PWD/qsyncablefunctions.h \
    $$PWD/qsyncableqmlwrapper.h \
    $$PWD/priv/qsalgotypes_p.h \
    $$PWD/priv/qsimmutablewrapper_p.h \
    $$PWD/priv/qsfastdiffrunneralgo_p.h \
    $$PWD/qsfastdiffrunner.h \
    $$PWD/qsyncableqmltypes.h

SOURCES += \
    $$PWD/qsdiffrunner.cpp \
    $$PWD/qspatch.cpp \
    $$PWD/qslistmodel.cpp \
    $$PWD/qsuuid.cpp \
    $$PWD/qsdiffrunneralgo.cpp \
    $$PWD/qstree.cpp \
    $$PWD/qstreenode.cpp \
    $$PWD/qsjsonlistmodel.cpp \
    $$PWD/qsyncableqmltypes.cpp \
    $$PWD/qsyncablefunctions.cpp \
    $$PWD/qsyncableqmlwrapper.cpp
