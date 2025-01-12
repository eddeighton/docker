#!/bin/bash

set -euxo pipefail

unzip ./boost_1_86_0.zip

cd boost_1_86_0

./bootstrap.sh

./b2 \
    cxxflags=-fPIC \
    linkflags=-fPIC \
    link=static \
	runtime-link=shared \
	variant=release \
	--with-atomic \
	--with-context \
	--with-coroutine \
    --with-date_time \
	--with-filesystem \
	--with-fiber \
    --with-iostreams \
	--with-program_options \
	--with-regex \
	--with-system \
	--with-serialization \
	--with-timer \
	--with-url \
	--with-wave \
	--layout=tagged	\
	toolset=gcc \
	address-model=64 \
	threading=multi \
	install

echo "boost 1.86 installation complete"

