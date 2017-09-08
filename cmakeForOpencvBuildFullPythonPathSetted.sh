cmake -D CMAKE_BUILD_TYPE=RELEASE \
    -D CMAKE_INSTALL_PREFIX=/usr/local \
    -D INSTALL_PYTHON_EXAMPLES=ON \
    -D BUILD_NEW_PYTHON_SUPPORT=ON \
    -D CMAKE_INSTALL_PREFIX=$(python3 -c "import sys; print(sys.prefix)") \
    -D PYTHON3_EXECUTABLE=$(which python3) \
    -D PYTHON3_INCLUDE_DIR=$(python3 -c "from distutils.sysconfig import get_python_inc; print(get_python_inc())") \
    -D PYTHON3_PACKAGES_PATH=$(python3 -c "from distutils.sysconfig import get_python_lib; print(get_python_lib())") \
    -D PYTHON3_LIBRARY=/usr/lib/x86_64-linux-gnu/libpython3.5m.so \
    -D PYTHON3_NUMPY_INCLUDE_DIRS=/home/adrien/.virtualenvs/hease-python/lib/python3.5/site-packages/numpy/core/include \
    -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib-3.3.0/modules \
    -D BUILD_EXAMPLES=ON ..


#ccmake -D CMAKE_BUILD_TYPE=RELEASE \
#    -D CMAKE_INSTALL_PREFIX=/usr/local \
#    -D INSTALL_PYTHON_EXAMPLES=ON \
#    -D BUILD_NEW_PYTHON_SUPPORT=ON \
#    -D CMAKE_INSTALL_PREFIX=$(python3 -c "import sys; print(sys.prefix)") \
#    -D PYTHON3_EXECUTABLE=$(which python3) \
#    -D PYTHON3_INCLUDE_DIR=$(python3 -c "from distutils.sysconfig import get_python_inc; print(get_python_inc())") \
#    -D PYTHON3_PACKAGES_PATH=$(python3 -c "from distutils.sysconfig import get_python_lib; print(get_python_lib())") \
#    -D PYTHON3_LIBRARY=/usr/lib/x86_64-linux-gnu/libpython3.5m.so \
#    -D PYTHON3_NUMPY_INCLUDE_DIRS=/home/adrien/.virtualenvs/hease-python/lib/python3.5/site-packages/numpy/core/include \
#    -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib-3.3.0/modules \
#    -D BUILD_EXAMPLES=ON ..