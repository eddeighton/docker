#!/bin/bash

unzip tmux-3.5a.zip

pushd tmux-3.5a

./autogen.sh && ./configure && make

make install

popd

