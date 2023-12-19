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

with_cpp_modules() {
	with_configurations $@ -i chalet.json -t vs-preview -a x64 -b native
	with_configurations $@ -i chalet.json -t vs-preview -a x86 -b native
	with_configurations $@ -i chalet.json -t vs-preview -a arm64 -b native
	with_configurations $@ -i chalet.json -t vs-preview -a arm -b native
}

test_path with_build_file "init-c"
test_path with_build_file "init-c-pch"
test_path with_build_file "init-cpp"
test_path with_build_file "init-cpp-pch"
test_path with_cpp_modules "init-cpp-modules"
test_path with_cpp_modules "init-cpp-modules-std"

