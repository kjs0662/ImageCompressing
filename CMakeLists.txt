cmake_minimum_required(VERSION 3.0.0)
project(thumbnailer VERSION 0.1.0)

include(CTest)
enable_testing()

add_library(thumbnailer imageCompressor.c)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
find_package( OpenCV REQUIRED )
target_link_libraries( thumbnailer ${OpenCV_LIBS} )

find_package(Java REQUIRED)
find_package (JNI REQUIRED)
include (UseJava)

set(CMAKE_JAVA_COMPILE_FLAGS -nowarn)
