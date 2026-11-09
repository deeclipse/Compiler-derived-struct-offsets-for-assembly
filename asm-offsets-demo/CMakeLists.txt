cmake_minimum_required(VERSION 3.20)
project(asm_offsets C ASM_MASM)

set(CMAKE_C_STANDARD 11)
set(GEN ${CMAKE_BINARY_DIR}/generated)
file(MAKE_DIRECTORY ${GEN})

# 1. The generator: computes offsetof() values from the real struct
add_executable(gen_offsets src/gen_offsets.c)
target_include_directories(gen_offsets PRIVATE include)

# 2. Run it whenever the generator or the struct changes
add_custom_command(
    OUTPUT  ${GEN}/offsets.inc ${GEN}/offsets.h
    COMMAND gen_offsets ${GEN}/offsets.inc ${GEN}/offsets.h
    DEPENDS gen_offsets include/regs.h
    COMMENT "Generating offsets.inc and offsets.h")

# 3. The test program: C + MASM
add_executable(offset src/main.c src/getr1.asm ${GEN}/offsets.inc ${GEN}/offsets.h)
target_include_directories(offset PRIVATE include ${GEN})

# The build tool does not scan MASM INCLUDE lines, so declare the dependency
set_source_files_properties(src/getr1.asm PROPERTIES OBJECT_DEPENDS ${GEN}/offsets.inc)

# 4. Test: exit code 0 means all six checks passed
enable_testing()
add_test(NAME regs_roundtrip COMMAND offset)