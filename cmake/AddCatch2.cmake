include(FetchContent)
FetchContent_Declare(
    Catch2
    GIT_REPOSITORY  https://github.com/catchorg/catch2.git
    GIT_TAG         v3.4.0
)

FetchContent_MakeAvailable(Catch2)
list(APPEND CMAKE_MODULE_PATH ${catch2_SOURCE_DIR}/extras)