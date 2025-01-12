#!/bin/bash

set -euxo pipefail

unzip googletest-1.15.2.zip

mkdir build

cmake -S ./googletest-1.15.2 \
      -B ./build \
      -GNinja \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_CXX_STANDARD=20 \
      -Wno-dev

cd build

ninja

sudo ninja install

echo "Successfully installed googletest 1.15.2"
