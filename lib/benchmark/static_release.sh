#!/bin/bash

set -euxo pipefail

unzip benchmark-1.9.1.zip

mkdir build

cmake -S ./benchmark-1.9.1 \
      -B ./build \
      -GNinja \
      -DCMAKE_BUILD_TYPE=Release \
      -DBENCHMARK_USE_BUNDLED_GTEST=Off \
      -DBENCHMARK_USE_BUNDLED_GTEST=Off \
      -DBENCHMARK_ENABLE_TESTING=off \
      -DCMAKE_CXX_STANDARD=20 \
      -Wno-dev

cd build

ninja

sudo ninja install

echo "Successfully installed google benchmark 1.9.1"
