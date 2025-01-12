#!/bin/bash

set -euxo pipefail

unzip json-3.11.3.zip
 
mkdir build

NLOHMANN_BUILD_TESTS_CMAKE=-DJSON_BuildTests:BOOL="0"
NLOHMANN_RUN_TESTS=-DBUILD_TESTING:BOOL="0"

cmake -S ./json-3.11.3 \
      -B ./build \
      -GNinja \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_CXX_STANDARD=20 \
      -Wno-dev \
      ${NLOHMANN_BUILD_TESTS_CMAKE} ${NLOHMANN_RUN_TESTS}

# ${GET_JSON_FROM_HERE}

cd build

ninja

sudo ninja install

echo "Successfully installed json-3.11.3"

