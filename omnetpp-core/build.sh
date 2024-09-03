
cd omnetpp
# Fix configure script
# https://aur.archlinux.org/cgit/aur.git/tree/PKGBUILD?h=omnetpp#n43
# https://github.com/omnetpp/omnetpp/issues/703
sed -i "2866 a ac_configure_args=$(echo $ac_configure_args | sed s/\'//g)" configure
# sed -i "2152 a ac_configure_args=$(echo $ac_configure_args | sed s/\'//g)" configure
echo WITH_QTENV=no >>configure.user
echo WITH_OSG=no >>configure.user
echo WITH_OSGEARTH=no >>configure.user
source ./setenv -f
CXX=x86_64-conda-linux-gnu-c++
./configure --prefix=$PREFIX --libdir=$PREFIX/lib --libexecdir=$PREFIX/lib
make -j${CPU_COUNT} ${VERBOSE_AT}
cd ..

#Install
mkdir -p $PREFIX/lib
mv omnetpp/lib/* $PREFIX/lib
mkdir -p $PREFIX/opt
cp -r omnetpp $PREFIX/opt/

mkdir -p $PREFIX/etc/conda/activate.d
cp activate.sh $PREFIX/etc/conda/activate.d/$PKG_NAME.sh