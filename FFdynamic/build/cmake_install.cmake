# Install script for directory: /Users/isaac/Downloads/FFdynamic-master/FFdynamic

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local/FFdynamic")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/isaac/Downloads/FFdynamic-master/FFdynamic/build/libffdynamic.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libffdynamic.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libffdynamic.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libffdynamic.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/usr/local/FFdynamic/cmake/FFdynamicTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}/usr/local/FFdynamic/cmake/FFdynamicTargets.cmake"
         "/Users/isaac/Downloads/FFdynamic-master/FFdynamic/build/CMakeFiles/Export/_usr/local/FFdynamic/cmake/FFdynamicTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}/usr/local/FFdynamic/cmake/FFdynamicTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}/usr/local/FFdynamic/cmake/FFdynamicTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/FFdynamic/cmake/FFdynamicTargets.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/FFdynamic/cmake" TYPE FILE FILES "/Users/isaac/Downloads/FFdynamic-master/FFdynamic/build/CMakeFiles/Export/_usr/local/FFdynamic/cmake/FFdynamicTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "/usr/local/FFdynamic/cmake/FFdynamicTargets-release.cmake")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
file(INSTALL DESTINATION "/usr/local/FFdynamic/cmake" TYPE FILE FILES "/Users/isaac/Downloads/FFdynamic-master/FFdynamic/build/CMakeFiles/Export/_usr/local/FFdynamic/cmake/FFdynamicTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/FFdynamic/cmake/FFdynamicProcConfigVersion.cmake;/usr/local/FFdynamic/cmake/FFdynamicConfig.cmake;/usr/local/FFdynamic/cmake/FindFFmpeg.cmake;/usr/local/FFdynamic/cmake/FindGlog.cmake;/usr/local/FFdynamic/cmake/FindGflags.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/FFdynamic/cmake" TYPE FILE FILES
    "/Users/isaac/Downloads/FFdynamic-master/FFdynamic/build/FFdynamicProcConfigVersion.cmake"
    "/Users/isaac/Downloads/FFdynamic-master/FFdynamic/build/FFdynamicConfig.cmake"
    "/Users/isaac/Downloads/FFdynamic-master/FFdynamic/cmake/FindFFmpeg.cmake"
    "/Users/isaac/Downloads/FFdynamic-master/FFdynamic/cmake/FindGlog.cmake"
    "/Users/isaac/Downloads/FFdynamic-master/FFdynamic/cmake/FindGflags.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/Users/isaac/Downloads/FFdynamic-master/FFdynamic/davBasis/davWave.h"
    "/Users/isaac/Downloads/FFdynamic-master/FFdynamic/davBasis/davMessager.h"
    "/Users/isaac/Downloads/FFdynamic-master/FFdynamic/davBasis/davUtil.h"
    "/Users/isaac/Downloads/FFdynamic-master/FFdynamic/davBasis/davOption.h"
    "/Users/isaac/Downloads/FFdynamic-master/FFdynamic/davBasis/davDict.h"
    "/Users/isaac/Downloads/FFdynamic-master/FFdynamic/davBasis/davProcBuf.h"
    "/Users/isaac/Downloads/FFdynamic-master/FFdynamic/davBasis/davProc.h"
    "/Users/isaac/Downloads/FFdynamic-master/FFdynamic/davBasis/davTransmitor.h"
    "/Users/isaac/Downloads/FFdynamic-master/FFdynamic/davBasis/davProcCtx.h"
    "/Users/isaac/Downloads/FFdynamic-master/FFdynamic/davImpl/davImpl.h"
    "/Users/isaac/Downloads/FFdynamic-master/FFdynamic/davImpl/davImplFactory.h"
    "/Users/isaac/Downloads/FFdynamic-master/FFdynamic/davImpl/davImplUtil.h"
    "/Users/isaac/Downloads/FFdynamic-master/FFdynamic/davImpl/davImplEventProcess.h"
    "/Users/isaac/Downloads/FFdynamic-master/FFdynamic/davImpl/davImplTravel.h"
    "/Users/isaac/Downloads/FFdynamic-master/FFdynamic/davImpl/ffmpegHeaders.h"
    "/Users/isaac/Downloads/FFdynamic-master/FFdynamic/davStreamlet/davStreamlet.h"
    "/Users/isaac/Downloads/FFdynamic-master/FFdynamic/davStreamlet/davStreamletBuilder.h"
    "/Users/isaac/Downloads/FFdynamic-master/FFdynamic/davEvent/davDynamicEvent.h"
    "/Users/isaac/Downloads/FFdynamic-master/FFdynamic/davEvent/davPeerEvent.h"
    "/Users/isaac/Downloads/FFdynamic-master/FFdynamic/davTools/audioResample/audioResample.h"
    "/Users/isaac/Downloads/FFdynamic-master/FFdynamic/davTools/imageToRawFrame/imageToRawFrame.h"
    "/Users/isaac/Downloads/FFdynamic-master/FFdynamic/davTools/globalSignalHandle/globalSignalHandle.h"
    "/Users/isaac/Downloads/FFdynamic-master/FFdynamic/davTools/imageToRawFrame/fmtScale.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/isaac/Downloads/FFdynamic-master/FFdynamic/build/davTests/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/isaac/Downloads/FFdynamic-master/FFdynamic/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
