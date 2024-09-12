git status
git restore proto # why rattler-build delete files
(cd third_party/uthash && git restore include)
git status
sed -i 's/AM_PATH_PYTHON(\[3.5\],, \[:\])/AM_PATH_PYTHON()/g' proto/configure.ac
./autogen.sh
sed -i '/install.*PYTHON/d' proto/Makefile.in
./configure --prefix=$PREFIX --with-proto --without-internal-rpc --without-cli --without-bmv2 --with-boost-libdir=$PREFIX/lib
make -j${CPU_COUNT} ${VERBOSE_AT}
make install-strip
