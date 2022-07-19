# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/ilya/Programming/16Sprint/Superfinal/runtime/thirdparty/utfcpp"
  "/home/ilya/Programming/16Sprint/Superfinal/antlr/runtime/utfcpp-prefix/src/utfcpp-build"
  "/home/ilya/Programming/16Sprint/Superfinal/antlr/runtime/utfcpp-prefix"
  "/home/ilya/Programming/16Sprint/Superfinal/antlr/runtime/utfcpp-prefix/tmp"
  "/home/ilya/Programming/16Sprint/Superfinal/antlr/runtime/utfcpp-prefix/src/utfcpp-stamp"
  "/home/ilya/Programming/16Sprint/Superfinal/antlr/runtime/utfcpp-prefix/src"
  "/home/ilya/Programming/16Sprint/Superfinal/antlr/runtime/utfcpp-prefix/src/utfcpp-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/ilya/Programming/16Sprint/Superfinal/antlr/runtime/utfcpp-prefix/src/utfcpp-stamp/${subDir}")
endforeach()
