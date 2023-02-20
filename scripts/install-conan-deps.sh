#!/usr/bin/env bash

echo "$CONAN_SYSREQUIRES_MODE"

echo 'Restoring Conan packages'
conan install . \
  -if build/conan -of build \
  --profile default.jinja \
  --profile compiler-linux-clang.jinja \
  --profile host-arch.jinja \
  --build=missing \
  -s build_type=Release \
  -s compiler.version=15
