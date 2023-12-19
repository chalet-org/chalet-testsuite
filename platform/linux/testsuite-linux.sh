#!/usr/bin/env bash

with_linux_arches() {
	with_x86_arches $@
	with_arm_arches $@
	with_armhf_arch $@
}

with_linux_toolchains() {
	with_linux_arches $@ -t gcc
	with_mingw_arches $@ -t gcc
	with_linux_arches $@ -t llvm
	with_mingw_arches $@ -t llvm
}

with_build_file() {
	with_linux_toolchains $@ -i chalet.json
}

test_path with_build_file "init-c"
test_path with_build_file "init-c-pch"
test_path with_build_file "init-cpp"
test_path with_build_file "init-cpp-pch"

