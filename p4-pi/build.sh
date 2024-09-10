
./autogen.sh
set +e # don't know why, fail first time
./configure --prefix=$PREFIX --with-proto --with-boost-libdir=$PREFIX/lib
set -e
./configure --prefix=$PREFIX --with-proto --with-boost-libdir=$PREFIX/lib
make -j${CPU_COUNT} ${VERBOSE_AT}
make install-strip