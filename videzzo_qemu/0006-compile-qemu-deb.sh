#!/bin/bash

pushd qemu
mkdir build-deb-6
pushd build-deb-6
CC=clang CXX=clang++ ../configure \
    --enable-videzzo --enable-fuzzing --enable-debug \
    --disable-werror --enable-sanitizers \
    --target-list="i386-softmmu arm-softmmu"
ninja qemu-fuzz-i386 qemu-fuzz-arm
popd
popd