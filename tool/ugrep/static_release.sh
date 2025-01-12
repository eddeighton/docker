#!/bin/bash

unzip ugrep-7.1.1.zip

pushd ugrep-7.1.1

./build.sh

make install

popd

