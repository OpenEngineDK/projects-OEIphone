# Install script for directory: ${SRCROOT}

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/usr/local")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Release")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("${SRCROOT}/projects/OEIphone/Xcode/src/cmake_install.cmake")
  INCLUDE("${SRCROOT}/projects/OEIphone/Xcode/AccelerationStructures/cmake_install.cmake")
  INCLUDE("${SRCROOT}/projects/OEIphone/Xcode/iOSEnvironment/cmake_install.cmake")
  INCLUDE("${SRCROOT}/projects/OEIphone/Xcode/IRC/cmake_install.cmake")
  INCLUDE("${SRCROOT}/projects/OEIphone/Xcode/mesh-OBJResource/cmake_install.cmake")
  INCLUDE("${SRCROOT}/projects/OEIphone/Xcode/MeshUtils/cmake_install.cmake")
  INCLUDE("${SRCROOT}/projects/OEIphone/Xcode/OpenGLESRenderer/cmake_install.cmake")
  INCLUDE("${SRCROOT}/projects/OEIphone/Xcode/OpenGLESResources/cmake_install.cmake")
  INCLUDE("${SRCROOT}/projects/OEIphone/Xcode/Sockets/cmake_install.cmake")
  INCLUDE("${SRCROOT}/projects/OEIphone/Xcode/TGAResource/cmake_install.cmake")
  INCLUDE("${SRCROOT}/projects/OEIphone/Xcode/OEIphone/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

IF(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
ELSE(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
ENDIF(CMAKE_INSTALL_COMPONENT)

FILE(WRITE "${SRCROOT}/projects/OEIphone/Xcode/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "${SRCROOT}/projects/OEIphone/Xcode/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
ENDFOREACH(file)
