#!/bin/bash

lxc launch ubuntu:22.04 signal-cli-gael

cd "$(dirname "$0")"

BUILD_DIR="./build"
TARGET_DIR="./target"

lxc file push ${BUILD_DIR}/build.sh signal-cli-gael/root/

lxc exec signal-cli-gael -- /bin/bash -c "/root/build.sh > build.log"

lxc file pull signal-cli-gael/root/build.log ${BUILD_DIR}

rm ${TARGET_DIR}/signal-cli
lxc file pull signal-cli-gael/root/signal-cli/build/native/nativeCompile/signal-cli ${TARGET_DIR}/signal-cli

lxc stop signal-cli-gael
lxc delete signal-cli-gael

exit 0
