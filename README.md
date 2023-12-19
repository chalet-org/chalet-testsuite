# chalet-testsuite

Platform test suite

> Note: Still a work in progress!

## Coverage:

### Init

Templates generated from `chalet init`. We just want these to cover as many build types as possible

**Windows**

- Requires Visual Studio (with arm, arm64 build toolchains), standalone LLVM, MinGW (from MSYS2)

| Language   | Toolchains | Architectures       | Strategies              | Configurations |
| ---------- | ---------- | ------------------- | ----------------------- | -------------- | 
| C          | vs-stable | x64, x86, arm, arm64 | makefile, ninja, native | Release, Debug |
|            | llvm      | x64, x86             | makefile, ninja, native | Release, Debug |
|            | gcc       | x64, x86             | makefile, ninja, native | Release, Debug |
| C w/ PCH   | vs-stable | x64, x86, arm, arm64 | makefile, ninja, native | Release, Debug |
|            | llvm      | x64, x86             | makefile, ninja, native | Release, Debug |
|            | gcc       | x64, x86             | makefile, ninja, native | Release, Debug |
| C++        | vs-stable | x64, x86, arm, arm64 | makefile, ninja, native | Release, Debug |
|            | llvm      | x64, x86             | makefile, ninja, native | Release, Debug |
|            | gcc       | x64, x86             | makefile, ninja, native | Release, Debug |
| C++ w/ PCH | vs-stable | x64, x86, arm, arm64 | makefile, ninja, native | Release, Debug |
|            | llvm      | x64, x86             | makefile, ninja, native | Release, Debug |
|            | gcc       | x64, x86             | makefile, ninja, native | Release, Debug |


**Linux**

- Expects Ubuntu (should work in WSL)
- Requires GCC cross-compilers for x86, arm, armhf, arm64 (aarch64), x86_64-w64-mingw32, i686-w64-mingw32

| Language   | Toolchains | Architectures       | Strategies              | Configurations |
| ---------- | ---------- | ------------------- | ----------------------- | -------------- | 
| C          | llvm      | x64, x86, arm, armhf, arm64, x86_64-w64-mingw32, i686-w64-mingw32 | makefile, ninja, native | Release, Debug |
|            | gcc       | x64, x86, arm, armhf, arm64, x86_64-w64-mingw32, i686-w64-mingw32 | makefile, ninja, native | Release, Debug |
| C w/ PCH   | llvm      | x64, x86, arm, armhf, arm64, x86_64-w64-mingw32, i686-w64-mingw32 | makefile, ninja, native | Release, Debug |
|            | gcc       | x64, x86, arm, armhf, arm64, x86_64-w64-mingw32, i686-w64-mingw32 | makefile, ninja, native | Release, Debug |
| C++        | llvm      | x64, x86, arm, armhf, arm64, x86_64-w64-mingw32, i686-w64-mingw32 | makefile, ninja, native | Release, Debug |
|            | gcc       | x64, x86, arm, armhf, arm64, x86_64-w64-mingw32, i686-w64-mingw32 | makefile, ninja, native | Release, Debug |
| C++ w/ PCH | llvm      | x64, x86, arm, armhf, arm64, x86_64-w64-mingw32, i686-w64-mingw32 | makefile, ninja, native | Release, Debug |
|            | gcc       | x64, x86, arm, armhf, arm64, x86_64-w64-mingw32, i686-w64-mingw32 | makefile, ninja, native | Release, Debug |



**MacOS**

- Requires Xcode

| Language   | Toolchains | Architectures         | Strategies              | Configurations |
| ---------- | ---------- | --------------------- | ----------------------- | -------------- | 
| C          | apple-llvm | arm64, x64, universal | makefile, ninja, native | Release, Debug |
| C w/ PCH   | apple-llvm | arm64, x64, universal | makefile, ninja, native | Release, Debug |
| C++        | apple-llvm | arm64, x64, universal | makefile, ninja, native | Release, Debug |
| C++ w/ PCH | apple-llvm | arm64, x64, universal | makefile, ninja, native | Release, Debug |
| Objective-C          | apple-llvm | arm64, x64, universal | makefile, ninja, native | Release, Debug |
| Objective-C w/ PCH   | apple-llvm | arm64, x64, universal | makefile, ninja, native | Release, Debug |
| Objective-C++        | apple-llvm | arm64, x64, universal | makefile, ninja, native | Release, Debug |
| Objective-C++ w/ PCH | apple-llvm | arm64, x64, universal | makefile, ninja, native | Release, Debug |

