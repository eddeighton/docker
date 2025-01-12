#!/bin/bash

set -euxo pipefail

unzip inja-3.4.0.zip
 
mkdir build

DO_NOT_USE_EMBEDDED_JSON=-DINJA_USE_EMBEDDED_JSON:BOOL="1"
ENSURE_INSTALLED=-DINJA_INSTALL=true
AVOID_RUNNING_TESTS=-DBUILD_TESTING=false
AVOID_PACKAGING_JSON=-DINJA_PACKAGE_USE_EMBEDDED_JSON=false
AVOID_BENCHMARKS=-DBUILD_BENCHMARK=false
# GET_JSON_FROM_HERE=-Dnlohmann_json_DIR="${BUILD_PATH}/${CFG_TUPLE}/nlohmann/install/lib64/cmake/nlohmann_json"

cmake -S ./inja-3.4.0 \
      -B ./build \
      -GNinja \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_CXX_STANDARD=20 \
      -Wno-dev \
      ${DO_NOT_USE_EMBEDDED_JSON} ${ENSURE_INSTALLED} ${AVOID_RUNNING_TESTS} ${AVOID_BENCHMARKS}

# ${GET_JSON_FROM_HERE}

cd build

ninja

sudo ninja install

echo "Successfully installed inja 3.4.0"

