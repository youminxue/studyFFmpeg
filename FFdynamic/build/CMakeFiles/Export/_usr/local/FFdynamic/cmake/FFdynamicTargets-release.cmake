#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "FFdynamic::FFdynamic" for configuration "Release"
set_property(TARGET FFdynamic::FFdynamic APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(FFdynamic::FFdynamic PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libffdynamic.dylib"
  IMPORTED_SONAME_RELEASE "@rpath/libffdynamic.dylib"
  )

list(APPEND _IMPORT_CHECK_TARGETS FFdynamic::FFdynamic )
list(APPEND _IMPORT_CHECK_FILES_FOR_FFdynamic::FFdynamic "${_IMPORT_PREFIX}/lib/libffdynamic.dylib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
