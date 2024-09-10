cd pi
git status
git restore proto third_party  # why conda modify files
./autogen.sh
./configure --prefix=$PREFIX --with-proto --with-boost-libdir=$PREFIX/lib
make -j${CPU_COUNT} ${VERBOSE_AT}
make install-strip
cd ..

./autogen.sh
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