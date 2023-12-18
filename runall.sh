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

$SHELL "$CWD/$PLATFORM/testsuite-$PLATFORM.sh"

echo
exit 0
