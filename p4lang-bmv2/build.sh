sed -i 's/AM_PATH_PYTHON(\[3.5\],, \[:\])/AM_PATH_PYTHON()/g' configure.ac
sed -i 's/AM_PATH_PYTHON(\[3.5\],, \[:\])/AM_PATH_PYTHON()/g' targets/simple_switch_grpc/configure.ac
./autogen.sh
sed -i '/install.*PYTHON/d' */Makefile.in
sed -i '/install.*PYTHON/d' targets/*/Makefile.in
./configure --prefix=$PREFIX --with-pi --without-nanomsg
make -j${CPU_COUNT} ${VERBOSE_AT}
make install

#Install
# mkdir -p $PREFIX/lib
# mv inet/src/*.so $PREFIX/lib
# mkdir -p $PREFIX/opt
# cp -r inet $PREFIX/opt/

# mkdir -p $PREFIX/etc/conda/activate.d
# cp activate.sh $PREFIX/etc/conda/activate.d/$PKG_NAME.sh