cmake_minimum_required(VERSION 2.6)
project(Interpr)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g -Wall")

# Library

add_library(AbstractFigure
	src/AbstractFigure.cpp
	src/AbstractFigure.h)

add_library(Scene
  src/Scene.cpp
  src/Scene.h)

add_library(Container
  src/Container.cpp
  src/Container.h)

add_library(Parser
  src/Parser.cpp
  src/Parser.h)

add_library(Figures
  src/Figures.cpp
  src/Figures.h)

set_target_properties(AbstractFigure Scene Container Parser Figures PROPERTIES
	CXX_STANDARD 11
	CXX_STANDARD_REQUIRED YES
	CXX_EXTENSIONS NO)

  # Program itself

  add_executable(Interpr src/main.cpp)

  add_dependencies(Interpr AbstractFigure)
  add_dependencies(Interpr Scene)
  add_dependencies(Interpr Container)
  add_dependencies(Interpr Parser)
  add_dependencies(Interpr Figures)

  set_target_properties(Interpr PROPERTIES
  	CXX_STANDARD 11
  	CXX_STANDARD_REQUIRED YES
  	CXX_EXTENSIONS NO)

  target_link_libraries(Interpr AbstractFigure)
  target_link_libraries(Interpr Scene)
  target_link_libraries(Interpr Container)
  target_link_libraries(Interpr Parser)
  target_link_libraries(Interpr Figures)

  # Unittests

add_executable(Interpr_unittests
	tests/main.cpp
	tests/Interpr_unittests.cpp)

set_target_properties(Interpr_unittests PROPERTIES
	CXX_STANDARD 11
	CXX_STANDARD_REQUIRED YES
	CXX_EXTENSIONS NO)

target_include_directories(Interpr_unittests PUBLIC
	"${PROJECT_SOURCE_DIR}/src"
	"${PROJECT_SOURCE_DIR}/tests/gtest/googletest"
	"${PROJECT_SOURCE_DIR}/tests/gtest/googletest/include")

add_dependencies(Interpr_unittests AbstractFigure)
add_dependencies(Interpr_unittests Scene)
add_dependencies(Interpr_unittests Container)
add_dependencies(Interpr_unittests Parser)
add_dependencies(Interpr_unittests Figures)

target_link_libraries(Interpr_unittests AbstractFigure)
target_link_libraries(Interpr_unittests Scene)
target_link_libraries(Interpr_unittests Container)
target_link_libraries(Interpr_unittests Parser)
target_link_libraries(Interpr_unittests Figures)

find_package(Threads REQUIRED)
target_link_libraries(Interpr_unittests ${CMAKE_THREAD_LIBS_INIT})
