#!/bin/bash

set -e

export CWD=$(pwd)

rm -rf venv cryptography-41.0.2-cp310-cp310-linux_x86_64.whl
python3.10 -m venv venv
source venv/bin/activate
pip install -U setuptools
pip install -U wheel pip
OPENSSL_DIR="${CWD}/openssl" OPENSSL_STATIC=1 pip wheel --no-cache-dir --no-binary cryptography cryptography==41.0.2
