include(Compiler/CMakeCommonCompilerMacros)

# Not aware of any verbose flag for ISPC
#set(CMAKE_ISPC_VERBOSE_FLAG )

set(CMAKE_DEPFILE_FLAGS_ISPC "-M -MT <OBJECT> -MF <DEPFILE>")

string(APPEND CMAKE_ISPC_FLAGS_INIT " ")
string(APPEND CMAKE_ISPC_FLAGS_DEBUG_INIT "-O0 -g")
string(APPEND CMAKE_ISPC_FLAGS_RELEASE_INIT " -O3 -DNDEBUG")
string(APPEND CMAKE_ISPC_FLAGS_MINSIZEREL_INIT " -O1 -DNDEBUG")
string(APPEND CMAKE_ISPC_FLAGS_RELWITHDEBINFO_INIT " -O2 -g -DNDEBUG")

set(CMAKE_ISPC_COMPILE_OPTIONS_PIE --pic)
set(CMAKE_ISPC_COMPILE_OPTIONS_PIC --pic)

set(CMAKE_INCLUDE_SYSTEM_FLAG_ISPC -isystem=)

set(CMAKE_ISPC_RESPONSE_FILE_FLAG "@")
set(CMAKE_ISPC_USE_RESPONSE_FILE_FOR_INCLUDES 1)
set(CMAKE_ISPC_USE_RESPONSE_FILE_FOR_LIBRARIES 1)
set(CMAKE_ISPC_USE_RESPONSE_FILE_FOR_OBJECTS 1)
