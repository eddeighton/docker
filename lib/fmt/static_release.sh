#!/bin/bash

set -euxo pipefail

unzip fmt-11.0.2.zip

mkdir build

cmake -S ./fmt-11.0.2 \
      -B ./build \
      -GNinja \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_CXX_STANDARD=20 \
      -Wno-dev

cd build

ninja

sudo ninja install

echo "Successfully installed fmt 11.0.2"
