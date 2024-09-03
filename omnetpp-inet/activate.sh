export INET_ROOT="$CONDA_PREFIX/opt/inet"

export OMNETPP_IMAGE_PATH="$OMNETPP_IMAGE_PATH:$INET_ROOT/images"
export INET_NED_PATH="$INET_ROOT/src:$INET_ROOT/tutorials:$INET_ROOT/showcases:$INET_ROOT/examples"
export INET_OMNETPP_OPTIONS="-n $INET_NED_PATH --image-path=$INET_ROOT/images"
export INET_GDB_OPTIONS="-quiet -ex run --args"
export INET_VALGRIND_OPTIONS="-v --tool=memcheck --leak-check=yes --show-reachable=no --leak-resolution=high --num-callers=40 --freelist-vol=4000000"
