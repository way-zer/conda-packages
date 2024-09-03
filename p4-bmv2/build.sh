cd pi
./autogen.sh
./configure --prefix=$PREFIX --with-proto --without-internal-rpc --without-cli --without-bmv2 [--with-sysrepo]
make -j${CPU_COUNT} ${VERBOSE_AT}
make install
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