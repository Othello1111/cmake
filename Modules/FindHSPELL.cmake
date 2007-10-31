# - Try to find HSPELL
# Once done this will define
#
#  HSPELL_FOUND - system has HSPELL
#  HSPELL_INCLUDE_DIR - the HSPELL include directory
#  HSPELL_LIBRARIES - The libraries needed to use HSPELL
#  HSPELL_DEFINITIONS - Compiler switches required for using HSPELL

# Copyright (c) 2006, Alexander Neundorf, <neundorf@kde.org>
#
# Redistribution and use is allowed according to the terms of the BSD license.
# For details see the accompanying COPYING-CMAKE-SCRIPTS file.


IF (HSPELL_INCLUDE_DIR AND HSPELL_LIBRARIES)
  # Already in cache, be silent
  SET(HSPELL_FIND_QUIETLY TRUE)
ENDIF (HSPELL_INCLUDE_DIR AND HSPELL_LIBRARIES)


FIND_PATH(HSPELL_INCLUDE_DIR hspell.h )

FIND_LIBRARY(HSPELL_LIBRARIES NAMES hspell )

IF (HSPELL_INCLUDE_DIR AND HSPELL_LIBRARIES)
   SET(HSPELL_FOUND TRUE)
ELSE (HSPELL_INCLUDE_DIR AND HSPELL_LIBRARIES)
   SET(HSPELL_FOUND FALSE)
ENDIF (HSPELL_INCLUDE_DIR AND HSPELL_LIBRARIES)

IF (HSPELL_FOUND)
  IF (NOT HSPELL_FIND_QUIETLY)
    MESSAGE(STATUS "Found HSPELL: ${HSPELL_LIBRARIES}")
  ENDIF (NOT HSPELL_FIND_QUIETLY)
ELSE (HSPELL_FOUND)
  IF (HSPELL_FIND_REQUIRED)
    MESSAGE(FATAL_ERROR "Could NOT find HSPELL")
  ENDIF (HSPELL_FIND_REQUIRED)
ENDIF (HSPELL_FOUND)

MARK_AS_ADVANCED(HSPELL_INCLUDE_DIR HSPELL_LIBRARIES)

