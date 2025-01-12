#!/bin/bash

unzip neovim-0.10.2.zip 

pushd neovim-0.10.2

make CMAKE_BUILD_TYPE=RelWithDebInfo

sudo make install

popd

