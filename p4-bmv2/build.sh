
./autogen.sh
./configure --prefix=$PREFIX
make -j${CPU_COUNT} ${VERBOSE_AT}

make install

#Install
# mkdir -p $PREFIX/lib
# mv inet/src/*.so $PREFIX/lib
# mkdir -p $PREFIX/opt
# cp -r inet $PREFIX/opt/

# mkdir -p $PREFIX/etc/conda/activate.d
# cp activate.sh $PREFIX/etc/conda/activate.d/$PKG_NAME.sh