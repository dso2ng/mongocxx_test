TEMPLATE = app
CONFIG += console c++11
CONFIG += static
CONFIG -= app_bundle
CONFIG -= qt

QMAKE_CXXFLAGS += -ffunction-sections -fdata-sections
QMAKE_LFLAGS += -Wl,--strip-discarded

DEFINES += MONGOCXX_STATIC \
           BSONCXX_STATIC \
           MONGOC_STATIC \
           BSON_STATIC \
           STATIC

CONFIG += link_pkgconfig
PKGCONFIG += libmongocxx-static
SOURCES += \
        main.cpp
