#!/bin/sh
set -e

cd $TRAVIS_BUILD_DIR
mkdir build && cd build
cmake -G"${TRAVIS_CMAKE_GENERATOR}" -DROBOTOLOGY_USES_GAZEBO:BOOL=ON -DROBOTOLOGY_ENABLE_DYNAMICS:BOOL=ON -DROBOTOLOGY_ENABLE_IHMC:BOOL=ON -DCMAKE_BUILD_TYPE=${TRAVIS_BUILD_TYPE} -DNON_INTERACTIVE_BUILD:BOOL=TRUE ..
cmake --build . --config $TRAVIS_BUILD_TYPE