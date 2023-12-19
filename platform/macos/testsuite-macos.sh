#!/usr/bin/env bash

with_apple_llvm_arches() {
	with_build_strategies $@ -a arm64
	with_build_strategies $@ -a x86_64
	with_build_strategies $@ -a universal
}

with_macos_toolchains() {
	with_apple_llvm_arches $@ -t apple-llvm
}

with_build_file() {
	with_macos_toolchains $@ -i chalet.json
}

test_path with_build_file "init-c"
test_path with_build_file "init-c-pch"
test_path with_build_file "init-cpp"
test_path with_build_file "init-cpp-pch"
test_path with_build_file "init-objective-c"
test_path with_build_file "init-objective-c-pch"
test_path with_build_file "init-objective-cpp"
test_path with_build_file "init-objective-cpp-pch"

