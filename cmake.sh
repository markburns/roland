#!/bin/bash

mkdir -p bin
mkdir -p build

rm -R bin/*
rm -R build/*

cmake -H. -Bbuild -G"Kate - Unix Makefiles"

pushd build > /dev/null

cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX=/usr/local ../

popd >/dev/null