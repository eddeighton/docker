#!/bin/bash

set -euxo pipefail

unzip pybind11-2.13.zip

mkdir build

cmake -S ./pybind11-2.13 \
      -B ./build \
      -GNinja \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_CXX_STANDARD=20 \
      -Wno-dev

cd build

ninja

sudo ninja install

echo "Successfully installed pybind11"
