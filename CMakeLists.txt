cmake_minimum_required(VERSION 3.0.0)
project(thumbnailer VERSION 0.1.0)

include(CTest)
enable_testing()

add_library(thumbnailer SHARED imageCompressor.c)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
find_package( OpenCV REQUIRED )
target_link_libraries( thumbnailer ${OpenCV_LIBS} )

find_package(Java REQUIRED)
find_package (JNI REQUIRED)
include (UseJava)

include_directories("/Library/Java/JavaVirtualMachines/jdk-13.0.2.jdk/Contents/Home/include")
include_directories("/Library/Java/JavaVirtualMachines/jdk-13.0.2.jdk/Contents/Home/include/darwin")
include_directories("/Users/jinseonkim/IdeaProjects/CloudSpring/src/main/java/com/jinseonkim/photocloud/imageService")