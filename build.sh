#!/bin/bash

set -euxo pipefail

docker build -f ./mega_gcc_14_2/base/Dockerfile -t mega_gcc_14_2_base .
docker build -f ./mega_gcc_14_2/lib/Dockerfile -t mega_gcc_14_2_lib .
docker build -f ./mega_gcc_14_2/tools/Dockerfile -t mega_gcc_14_2_tools .
