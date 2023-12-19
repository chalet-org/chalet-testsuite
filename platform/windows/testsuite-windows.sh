#!/usr/bin/env bash

with_windows_toolchains() {
	with_win32_arches $@ -t vs-stable
	with_arm_arches $@ -t vs-stable
	with_x86_arches $@ -t llvm
	with_mingw_arches $@ -t gcc
}

with_build_file() {
	with_windows_toolchains $@ -i chalet.json
}

test_path with_build_file "init-c"
test_path with_build_file "init-c-pch"
test_path with_build_file "init-cpp"
test_path with_build_file "init-cpp-pch"

