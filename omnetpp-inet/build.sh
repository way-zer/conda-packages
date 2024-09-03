
cd inet
CXX=g++
make makefiles && make -j${CPU_COUNT} ${VERBOSE_AT}
cd ..

#Install
mkdir -p $PREFIX/lib
mv inet/src/*.so $PREFIX/lib
mkdir -p $PREFIX/opt
cp -r inet $PREFIX/opt/

mkdir -p $PREFIX/etc/conda/activate.d
cp activate.sh $PREFIX/etc/conda/activate.d/$PKG_NAME.sh