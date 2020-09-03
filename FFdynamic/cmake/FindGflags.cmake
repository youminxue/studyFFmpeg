# FindGflags.cmake
# Finds the Gflags libraries and will define the TARGET: Gflags::Gflags
# Author: pxt
# Project: https://github.com/Xingtao/FFdynamic
#

include(FindPackageHandleStandardArgs)

# components needed
if (NOT Gflags_Find_Libs)
  set(Gflags_Find_Libs gflags)
endif ()

#### start processing: 1. get gflags serach path hints
# if user provides gflags path
if (GFLAGS_CUSTOME_PATH)
  set(GFLAGS_SEARCHING_LIB_HINTS ${GFLAGS_CUSTOME_PATH})
  set(GFLAGS_SEARCHING_INCLUDE_HINTS ${GFLAGS_SEARCHING_LIB_HINTS})
  message ("Will search Gflags with user provided dirs: " "${GFLAGS_SEARCHING_LIB_HINTS}")
endif()

# if not, try with pkg_config
find_package(PkgConfig)
if (NOT GFLAGS_CUSTOME_PATH AND PKG_CONFIG_FOUND)
  message ("--** Will use pkg_config to find Gflags")
  pkg_check_modules(PC_GFLAGS REQUIRED gflags)
  set (GFLAGS_SEARCHING_LIB_HINTS ${PC_GFLAGS_LIBRARY_DIRS})
  set (GFLAGS_SEARCHING_INCLUDE_HINTS ${PC_GFLAGS_INCLUDE_DIRS})

  list(LENGTH GFLAGS_SEARCHING_LIB_HINTS GFLAGS_SEARCHING_LIB_HINTS_LEN)
  message("-- pkg config lib: " ${GFLAGS_SEARCHING_LIB_HINTS})
  message("-- pkg config include: " ${GFLAGS_SEARCHING_INCLUDE_HINTS})
  if (${GFLAGS_SEARCHING_LIB_HINTS_LEN} EQUAL 0)
    set(PKG_CONFIG_FOUND_GFLAGS_FAIL ON)
  else (${GFLAGS_SEARCHING_LIB_HINTS_LEN} EQUAL 0)
    set(PKG_CONFIG_FOUND_GFLAGS_FAIL OFF)
  endif()
endif()


# if no user provided path and pkg_config fails, we try with more dirs then default PATH (explictily via HINTS)
if (NOT GFLAGS_CUSTOME_PATH AND PKG_CONFIG_FOUND AND PKG_CONFIG_FOUND_GFLAGS_FAIL)
  # explicit use following searching path (NO_DEFAULT_PATH will be set then)
  set(GFLAGS_SEARCHING_LIB_HINTS /usr /usr/local /sw /opt /opt/local /usr/lib/x86_64-linux-gnu)
  set(GFLAGS_SEARCHING_INCLUDE_HINTS ${GFLAGS_SEARCHING_LIB_HINTS})
  message ("--** Will search Gflags in default dirs: " "${GFLAGS_SEARCHING_LIB_HINTS}")
endif ()


#### 2. search and set libraries
if (NOT GFLAGS_FOUND) # may already have cached results
  message("--** Searching Gflags with dirs: " "${GFLAGS_SEARCHING_LIB_HINTS}")
  find_path(GFLAGS_LIBGFLAGS_INLUCDE_DIR
    NAMES gflags.h
    HINTS ${GFLAGS_SEARCHING_INCLUDE_HINTS}
    PATH_SUFFIXES include gflags include/gflags
    NO_DEFAULT_PATH
    )
  find_library(GFLAGS_LIBGFLAGS
    NAMES gflags
    HINTS ${GFLAGS_SEARCHING_LIB_HINTS}
    PATH_SUFFIXES lib gflags lib/gflags
    NO_DEFAULT_PATH)
  # append newly found one
  if (GFLAGS_LIBGFLAGS AND GFLAGS_LIBGFLAGS_INLUCDE_DIR)
    set(GFLAGS_LIBRARIES ${GFLAGS_LIBGFLAGS})
    set(GFLAGS_INCLUDE_DIRS ${GFLAGS_LIBGFLAGS_INLUCDE_DIR})
    message ("-- Found lib --> " ${GFLAGS_LIBRARIES} " and path " ${GFLAGS_INCLUDE_DIRS})
    set(GFLAGS_FOUND ON)
  else()
    message ("-- Not Found lib --> " ${GFLAGS_LIBRARIES} " or path " ${GFLAGS_INCLUDE_DIRS})
  endif()
endif()

#### 3. set target
if (GFLAGS_FOUND AND NOT TARGET Gflags::Gflags)
  message("Set target Gflags::Gflags:\n *Include: "
    "${GFLAGS_INCLUDE_DIRS}" "\n*Libraries: " "${GFLAGS_LIBRARIES} " "${GFLAGS_SEARCHING_INCLUDE_HINTS}")
  add_library(Gflags::Gflags INTERFACE IMPORTED)
  set_target_properties(Gflags::Gflags PROPERTIES
    INTERFACE_INCLUDE_DIRECTORIES "${GFLAGS_SEARCHING_INCLUDE_HINTS}"
    INTERFACE_LINK_LIBRARIES "${GFLAGS_LIBRARIES}")
    # IMPORTED_LOCATION "/usr/local")
endif()

##get_target_property(location Gflags::Gflags IMPORTED_LOCATION)
##message("Test: location: " "${location}")
