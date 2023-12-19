#!/usr/bin/env bash

CWD="$PWD"

if [[ $OSTYPE == 'linux-gnueabihf' ]]; then
	PLATFORM=pi
elif [[ $OSTYPE == 'linux-gnu'* || $OSTYPE == 'cygwin'* ]]; then
	PLATFORM=linux
elif [[ $OSTYPE == 'darwin'* ]]; then
	PLATFORM=macos
elif [[ $OSTYPE == 'msys' || $OSTYPE == 'win32' ]]; then
	PLATFORM=windows
fi

if [[ $PLATFORM == "" ]]; then
	echo "Platform '$OSTYPE' not yet implemented."
	exit 1
fi

platform_dir="$CWD/platform"

if [ ! -d "$platform_dir" ]; then
	echo "Directory does not exist: $platform_dir"
	exit 1
fi

source "$platform_dir/common.sh"

check_dir "$CWD/tests"

source "$platform_dir/$PLATFORM/testsuite-$PLATFORM.sh"

echo "All tests passed!"

echo
exit 0
