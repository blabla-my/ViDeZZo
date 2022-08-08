#!/bin/bash

pushd qemu
mkdir build-san-6
pushd build-san-6
CC=clang CXX=clang++ ../configure \
    --enable-videzzo --enable-fuzzing --enable-debug \
    --disable-werror --enable-sanitizers \
    --target-list="i386-softmmu x86_64-softmmu arm-softmmu aarch64-softmmu"
ninja qemu-videzzo-i386 qemu-videzzo-x86_64 qemu-videzzo-arm qemu-videzzo-aarch64
popd
popd
