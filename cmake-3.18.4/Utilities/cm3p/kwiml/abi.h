/* Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
   file Copyright.txt or https://cmake.org/licensing for details.  */
#ifndef cm3p_kwiml_abi_h
#define cm3p_kwiml_abi_h

/* Use the KWIML library configured for CMake.  */
#include "cmThirdParty.h"
#ifdef CMAKE_USE_SYSTEM_KWIML
#  include <kwiml/abi.h> // IWYU pragma: export
#else
#  include <KWIML/include/kwiml/abi.h> // IWYU pragma: export
#endif

#endif
