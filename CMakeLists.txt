cmake_minimum_required(VERSION 3.20)

project(Dependencies)

enable_testing()

list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")

set(CXX_STANDARD 23)
set(CXX_STANDARD_REQUIRED ON)

add_subdirectory(calculator)

add_executable(rooster main.cpp)
target_include_directories(rooster PUBLIC calculator/include)
target_link_libraries(rooster PRIVATE calculator)

add_subdirectory(test)

add_subdirectory(docs)