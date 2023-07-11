#!/bin/bash

set -e

export OPENSSL_VERSION=3.1.1
export CWD=$(pwd)

curl -O https://www.openssl.org/source/openssl-${OPENSSL_VERSION}.tar.gz
tar xvf openssl-${OPENSSL_VERSION}.tar.gz
cd openssl-${OPENSSL_VERSION}
./config no-shared no-ssl2 no-ssl3 -fPIC --prefix=${CWD}/openssl
make -j $(nproc) && make install
cd ..
