cmake_minimum_required(VERSION 2.8 FATAL_ERROR)

set (CMAKE_CXX_STANDARD 11)
project(face_k19093)

find_package(OpenCV 4.0.1 REQUIRED)

include_directories(${OpenCV_INCLUDE_DIRS})
file(GLOB SOURCES *.cpp)

add_executable (face_k19093 ${SOURCES})
target_link_libraries (face_k19093
	PRIVATE ${OpenCV_LIBS}
)