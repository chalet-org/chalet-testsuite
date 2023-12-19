#!/usr/bin/env bash

check_dir() {
	this_directory="$1"

	if [ ! -d "$this_directory" ]; then
		echo "Directory does not exist: $this_directory"
		exit 1
	fi
}

change_dir() {
	check_dir "$1"
	cd "$1"
}

test_on_error_code() {
    this_command=$@
	# $@ 1> /dev/null
	$@
    exit_code=$?
    if [ $exit_code -ne 0 ]; then
        >&2 echo "\"${this_command}\" exited with code: ${exit_code}"
        exit $exit_code
    fi
}

with_configurations() {
	test_on_error_code $@ -c Release
	test_on_error_code $@ -c Debug
	# test_on_error_code $@ -c MinSizeRel
	# test_on_error_code $@ -c RelWithDebInfo
	# test_on_error_code $@ -c RelHighOpt
	# test_on_error_code $@ -c Profile
	# test_on_error_code $@ -c DebugSanitizeAddress
}

with_build_strategies() {
	# with_configurations $@ -b makefile
	# with_configurations $@ -b ninja
	with_configurations $@ -b native
}

with_arm_arches() {
	with_build_strategies $@ -a arm64
	with_build_strategies $@ -a arm
}

with_win32_arches() {
	with_build_strategies $@ -a x64
	with_build_strategies $@ -a x86
}

with_x86_arches() {
	with_build_strategies $@ -a x86_64
	with_build_strategies $@ -a i686
}

with_armhf_arch() {
	with_build_strategies $@ -a armhf
}

with_mingw_arches() {
	with_build_strategies $@ -a x86_64-w64-mingw32
	with_build_strategies $@ -a i686-w64-mingw32
}

clean_path() {
	rm -rf build .chaletrc
}

test_path() {
	change_dir "$CWD/tests/$2"

	$1 chalet build --generate-compile-commands --no-benchmark --no-show-commands
	clean_path
}
