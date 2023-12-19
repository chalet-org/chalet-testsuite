# chalet-testsuite

Platform test suite

> Note: Still a work in progress!

## Coverage:

### Init

Templates generated from `chalet init`. We just want these to cover as many build types as possible

**Windows**

- Requires Visual Studio (with arm, arm64 build toolchains), standalone LLVM, MinGW (from MSYS2)

| Test       | Toolchains | Architectures       | Strategies              | Configurations |
| ---------- | ---------- | ------------------- | ----------------------- | -------------- | 
| C          | vs-stable | x64, x86, arm, arm64 | makefile, ninja, native | Release, Debug |
|            | llvm      | x86_64, i686         | makefile, ninja, native | Release, Debug |
|            | gcc       | x86_64, i686         | makefile, ninja, native | Release, Debug |
| C w/ PCH   | vs-stable | x64, x86, arm, arm64 | makefile, ninja, native | Release, Debug |
|            | llvm      | x86_64, i686         | makefile, ninja, native | Release, Debug |
|            | gcc       | x86_64, i686         | makefile, ninja, native | Release, Debug |
| C++        | vs-stable | x64, x86, arm, arm64 | makefile, ninja, native | Release, Debug |
|            | llvm      | x86_64, i686         | makefile, ninja, native | Release, Debug |
|            | gcc       | x86_64, i686         | makefile, ninja, native | Release, Debug |
| C++ w/ PCH | vs-stable | x64, x86, arm, arm64 | makefile, ninja, native | Release, Debug |
|            | llvm      | x86_64, i686         | makefile, ninja, native | Release, Debug |
|            | gcc       | x86_64, i686         | makefile, ninja, native | Release, Debug |
| C++ modules (20) | vs-preview | x64, x86, arm, arm64 | native | Release, Debug |
| C++ modules (23 w/ import std) | vs-preview | x64, x86, arm, arm64 | native | Release, Debug |

**MacOS**

- Requires Xcode

| Test       | Toolchains | Architectures         | Strategies              | Configurations |
| ---------- | ---------- | --------------------- | ----------------------- | -------------- | 
| C          | apple-llvm | arm64, x86_64, universal | makefile, ninja, native | Release, Debug |
| C w/ PCH   | apple-llvm | arm64, x86_64, universal | makefile, ninja, native | Release, Debug |
| C++        | apple-llvm | arm64, x86_64, universal | makefile, ninja, native | Release, Debug |
| C++ w/ PCH | apple-llvm | arm64, x86_64, universal | makefile, ninja, native | Release, Debug |
| Objective-C          | apple-llvm | arm64, x86_64, universal | makefile, ninja, native | Release, Debug |
| Objective-C w/ PCH   | apple-llvm | arm64, x86_64, universal | makefile, ninja, native | Release, Debug |
| Objective-C++        | apple-llvm | arm64, x86_64, universal | makefile, ninja, native | Release, Debug |
| Objective-C++ w/ PCH | apple-llvm | arm64, x86_64, universal | makefile, ninja, native | Release, Debug |

**Linux - Ubuntu**

- Should work in WSL
- Requires GCC cross-compilers for i686, arm, armhf, arm64 (aarch64), x86_64-w64-mingw32, i686-w64-mingw32

| Test       | Toolchains | Architectures       | Strategies              | Configurations |
| ---------- | ---------- | ------------------- | ----------------------- | -------------- | 
| C          | llvm       | x86_64, i686, arm, armhf, arm64, x86_64-w64-mingw32, i686-w64-mingw32 | makefile, ninja, native | Release, Debug |
|            | gcc        | x86_64, i686, arm, armhf, arm64, x86_64-w64-mingw32, i686-w64-mingw32 | makefile, ninja, native | Release, Debug |
| C w/ PCH   | llvm       | x86_64, i686, arm, armhf, arm64, x86_64-w64-mingw32, i686-w64-mingw32 | makefile, ninja, native | Release, Debug |
|            | gcc        | x86_64, i686, arm, armhf, arm64, x86_64-w64-mingw32, i686-w64-mingw32 | makefile, ninja, native | Release, Debug |
| C++        | llvm       | x86_64, i686, arm, armhf, arm64, x86_64-w64-mingw32, i686-w64-mingw32 | makefile, ninja, native | Release, Debug |
|            | gcc        | x86_64, i686, arm, armhf, arm64, x86_64-w64-mingw32, i686-w64-mingw32 | makefile, ninja, native | Release, Debug |
| C++ w/ PCH | llvm       | x86_64, i686, arm, armhf, arm64, x86_64-w64-mingw32, i686-w64-mingw32 | makefile, ninja, native | Release, Debug |
|            | gcc        | x86_64, i686, arm, armhf, arm64, x86_64-w64-mingw32, i686-w64-mingw32 | makefile, ninja, native | Release, Debug |

**Linux - Raspbian**

- Just the armhf architecture for now

| Test       | Toolchains | Architectures       | Strategies              | Configurations |
| ---------- | ---------- | ------------------- | ----------------------- | -------------- | 
| C          | llvm       | armhf | makefile, ninja, native | Release, Debug |
|            | gcc        | armhf | makefile, ninja, native | Release, Debug |
| C w/ PCH   | llvm       | armhf | makefile, ninja, native | Release, Debug |
|            | gcc        | armhf | makefile, ninja, native | Release, Debug |
| C++        | llvm       | armhf | makefile, ninja, native | Release, Debug |
|            | gcc        | armhf | makefile, ninja, native | Release, Debug |
| C++ w/ PCH | llvm       | armhf | makefile, ninja, native | Release, Debug |
|            | gcc        | armhf | makefile, ninja, native | Release, Debug |

