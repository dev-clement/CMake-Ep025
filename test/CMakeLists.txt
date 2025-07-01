include(AddCatch2)

add_executable(unittest src/test_calc.cpp src/test_run_app.cpp)
target_link_libraries(unittest PRIVATE run_app Catch2::Catch2WithMain)

include(CTest)
include(Catch)
catch_discover_tests(unittest)