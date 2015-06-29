#!/bin/sh
CPPFLAGS="-I/c/deps/db-4.8.30.NC/build_unix \
-I/c/deps/openssl-1.0.1l/include \
-I/c/deps \
-I/c/deps/protobuf-2.6.1/src \
-I/c/deps/libpng-1.6.16 \
-I/c/deps/qrencode-3.4.4" \
LDFLAGS="-L/c/deps/db-4.8.30.NC/build_unix \
-L/c/deps/openssl-1.0.1l \
-L/c/deps/miniupnpc \
-L/c/deps/protobuf-2.6.1/src/.libs \
-L/c/deps/libpng-1.6.16/.libs \
-L/c/deps/qrencode-3.4.4/.libs" \
BOOST_ROOT=/c/deps/boost_1_57_0 \
./configure \
--disable-upnp-default \
--disable-tests \
--with-qt-incdir=/c/Qt/5.3.2/include \
--with-qt-libdir=/c/Qt/5.3.2/lib \
--with-qt-plugindir=/c/Qt/5.3.2/plugins \
--with-qt-bindir=/c/Qt/5.3.2/bin \
--with-protoc-bindir=/c/deps/protobuf-2.6.1/src