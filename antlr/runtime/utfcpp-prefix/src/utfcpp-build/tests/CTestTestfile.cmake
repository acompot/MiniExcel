# CMake generated Testfile for 
# Source directory: /home/ilya/Programming/16Sprint/SpreadSheet/runtime/thirdparty/utfcpp/tests
# Build directory: /home/ilya/Programming/16Sprint/SpreadSheet/runtime/utfcpp-prefix/src/utfcpp-build/tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(negative_test "negative" "/home/ilya/Programming/16Sprint/SpreadSheet/runtime/thirdparty/utfcpp/tests/test_data/utf8_invalid.txt")
set_tests_properties(negative_test PROPERTIES  _BACKTRACE_TRIPLES "/home/ilya/Programming/16Sprint/SpreadSheet/runtime/thirdparty/utfcpp/tests/CMakeLists.txt;42;add_test;/home/ilya/Programming/16Sprint/SpreadSheet/runtime/thirdparty/utfcpp/tests/CMakeLists.txt;0;")
add_test(cpp11_test "cpp11")
set_tests_properties(cpp11_test PROPERTIES  _BACKTRACE_TRIPLES "/home/ilya/Programming/16Sprint/SpreadSheet/runtime/thirdparty/utfcpp/tests/CMakeLists.txt;43;add_test;/home/ilya/Programming/16Sprint/SpreadSheet/runtime/thirdparty/utfcpp/tests/CMakeLists.txt;0;")
add_test(cpp17_test "cpp17")
set_tests_properties(cpp17_test PROPERTIES  _BACKTRACE_TRIPLES "/home/ilya/Programming/16Sprint/SpreadSheet/runtime/thirdparty/utfcpp/tests/CMakeLists.txt;44;add_test;/home/ilya/Programming/16Sprint/SpreadSheet/runtime/thirdparty/utfcpp/tests/CMakeLists.txt;0;")
add_test(api_test "apitests")
set_tests_properties(api_test PROPERTIES  _BACKTRACE_TRIPLES "/home/ilya/Programming/16Sprint/SpreadSheet/runtime/thirdparty/utfcpp/tests/CMakeLists.txt;45;add_test;/home/ilya/Programming/16Sprint/SpreadSheet/runtime/thirdparty/utfcpp/tests/CMakeLists.txt;0;")
add_test(noexceptions_test "noexceptionstests")
set_tests_properties(noexceptions_test PROPERTIES  _BACKTRACE_TRIPLES "/home/ilya/Programming/16Sprint/SpreadSheet/runtime/thirdparty/utfcpp/tests/CMakeLists.txt;46;add_test;/home/ilya/Programming/16Sprint/SpreadSheet/runtime/thirdparty/utfcpp/tests/CMakeLists.txt;0;")
