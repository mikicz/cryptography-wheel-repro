#!/bin/bash
set -e
export CWD=$(pwd)

OPENSSL_DIR="${CWD}/openssl" pip install \
		-t target \
		--no-deps \
		--platform manylinux2014_x86_64 \
		--python 3.10 \
		--implementation cp \
		--no-cache-dir --no-binary=:all: --upgrade cryptography==41.0.2
