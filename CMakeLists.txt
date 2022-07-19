cmake_minimum_required(VERSION 3.8 FATAL_ERROR)
project(SuperExel)

set(CMAKE_CXX_STANDARD 17)
if(MSVC)
  set(
    CMAKE_CXX_FLAGS_DEBUG
    "${CMAKE_CXX_FLAGS_DEBUG} /JMC"
  )
else()
  set(
    set(CMAKE_CXX_COMPILER clang++)
    CMAKE_CXX_FLAGS
    "${CMAKE_CXX_FLAGS} -Wall -Wextra -pedantic   -Wno-unused-parameter -Wno-implicit-fallthrough"
  )
endif()


set(ANTLR_EXECUTABLE ${CMAKE_CURRENT_SOURCE_DIR}/antlr/antlr-4.9.2-complete.jar)
include(${CMAKE_CURRENT_SOURCE_DIR}/FindANTLR.cmake)

add_definitions(
  -DANTLR4CPP_STATIC
  -D_SILENCE_ALL_CXX17_DEPRECATION_WARNINGS
)


set(antlr_dir  ${CMAKE_CURRENT_SOURCE_DIR}/antlr/runtime)

include_directories(include src ${antlr_dir}/src )
set(WITH_STATIC_CRT OFF CACHE BOOL "Visual C++ static CRT for ANTLR" FORCE)
add_subdirectory(${antlr_dir})
antlr_target(FormulaParser Formula.g4 LEXER PARSER LISTENER)

include_directories(
  ${ANTLR4_INCLUDE_DIRS}
  ${ANTLR_FormulaParser_OUTPUT_DIR}
  ${CMAKE_CURRENT_SOURCE_DIR}/runtime/src
)

set(sources
    "src/cell.cpp"
    "src/formula.cpp"
    "src/FormulaAST.cpp"
    "src/sheet.cpp"
    "src/structures.cpp"
    "src/main.cpp")

set(inc
    "include/cell.h"
    "include/common.h"
    "include/formula.h"
    "include/FormulaAST.h"
    "include/sheet.h"
    "include/test_runner_p.h")

add_executable(
  spreadsheet
  ${ANTLR_FormulaParser_CXX_OUTPUTS}
  ${sources}
  ${inc}
  )


target_link_libraries(spreadsheet antlr4_static)
if(MSVC)
  target_compile_options(antlr4_static PRIVATE /W0)
endif()

install(
  TARGETS spreadsheet
  DESTINATION bin
  EXPORT spreadsheet
)

set_directory_properties(PROPERTIES VS_STARTUP_PROJECT formulaAST)
