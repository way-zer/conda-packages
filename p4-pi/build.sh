git status
git restore proto third_party  # why conda modify files
./autogen.sh
./configure --prefix=$PREFIX --with-proto --with-boost-libdir=$PREFIX/lib
make -j${CPU_COUNT} ${VERBOSE_AT}
make install-strip