cmake_minimum_required(VERSION 3.14)
project(MiniVM VERSION 1.0 DESCRIPTION "A simple VM for demonstration purposes")

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_library(vm_lib STATIC src/vm.cpp)
target_include_directories(vm_lib PUBLIC include)

enable_testing()
find_package(GTest REQUIRED)
include(GoogleTest)

add_executable(vm_test tests/vm_test.cpp)
target_link_libraries(vm_test PRIVATE vm_lib GTest::GTest GTest::Main)
target_include_directories(vm_test PRIVATE include)

gtest_discover_tests(vm_test)
