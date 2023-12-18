#!/usr/bin/env bash

CWD="$PWD"

test_on_error_code() {
    this_command=$@
	$@ 1> /dev/null
    exit_code=$?
    if [ $exit_code -ne 0 ]; then
        >&2 echo "\"${this_command}\" exited with code: ${exit_code}"
        exit $exit_code
    fi
}

test_with_configurations() {
	test_on_error_code $@ -c Release
	test_on_error_code $@ -c Debug
	# test_on_error_code $@ -c MinSizeRel
	# test_on_error_code $@ -c RelWithDebInfo
	# test_on_error_code $@ -c RelHighOpt
	# test_on_error_code $@ -c Profile
	# test_on_error_code $@ -c DebugSanitizeAddress
}

test_with_build_strategies() {
	test_with_configurations $@ -b makefile
	test_with_configurations $@ -b ninja
	test_with_configurations $@ -b native
}

test_with_apple_llvm_arches() {
	test_with_build_strategies $@ -a arm64
	test_with_build_strategies $@ -a x86_64
	test_with_build_strategies $@ -a universal
}

test_on_macos() {
	test_with_apple_llvm_arches $@ -t apple-llvm
}

clean_path() {
	rm -rf build .chaletrc
}

test_each_build_file() {
	test_on_macos $@ -i chalet.json
}

test_path() {
	cd "$CWD/all/$1"

	test_each_build_file chalet build --quieter --dump-assembly --generate-compile-commands --no-benchmark --no-show-commands
	clean_path
}


echo "$CWD"

test_path "init-c"
test_path "init-c-pch"
test_path "init-cpp"
test_path "init-cpp-pch"
test_path "init-objective-c"
test_path "init-objective-c-pch"
test_path "init-objective-cpp"
test_path "init-objective-cpp-pch"

echo "All tests passed!"

