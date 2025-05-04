#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/demao/srtp/workspace/src/motion_node"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/demao/srtp/workspace/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/demao/srtp/workspace/install/lib/python3/dist-packages:/home/demao/srtp/workspace/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/demao/srtp/workspace/build" \
    "/usr/bin/python3" \
    "/home/demao/srtp/workspace/src/motion_node/setup.py" \
    egg_info --egg-base /home/demao/srtp/workspace/build/motion_node \
    build --build-base "/home/demao/srtp/workspace/build/motion_node" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/demao/srtp/workspace/install" --install-scripts="/home/demao/srtp/workspace/install/bin"
