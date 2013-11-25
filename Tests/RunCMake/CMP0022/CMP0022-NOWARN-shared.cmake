enable_language(CXX)

add_library(foo SHARED empty_vs6_1.cpp)
add_library(bar SHARED empty_vs6_2.cpp)
target_link_libraries(bar foo)

add_executable(zot empty.cpp)
target_link_libraries(zot bar)
