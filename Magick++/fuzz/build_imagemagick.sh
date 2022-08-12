#!/bin/bash -eu

./configure --prefix="$WORK" --disable-shared --disable-docs --with-utilities=no LDFLAGS="${LDFLAGS:-} -L$WORK/lib" CFLAGS="$CFLAGS -I$WORK/include" PKG_CONFIG_PATH="$WORK/lib/pkgconfig"
make "-j$(nproc)"
make install
