#!/usr/bin/env bash

with_linux_pi_toolchains() {
	with_armhf_arch $@ -t gcc
	with_armhf_arch $@ -t llvm
}

with_build_file() {
	with_linux_pi_toolchains $@ -i chalet.json
}

test_path with_build_file "init-c"
test_path with_build_file "init-c-pch"
test_path with_build_file "init-cpp"
test_path with_build_file "init-cpp-pch"
