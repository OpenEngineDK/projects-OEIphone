# Install script for directory: /Users/ptx/Projects/OE/OEIphone/src

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
  INCLUDE("/Users/ptx/Projects/OE/OEIphone/projects/OEIphone/Xcode/src/Core/cmake_install.cmake")
  INCLUDE("/Users/ptx/Projects/OE/OEIphone/projects/OEIphone/Xcode/src/Devices/cmake_install.cmake")
  INCLUDE("/Users/ptx/Projects/OE/OEIphone/projects/OEIphone/Xcode/src/Display/cmake_install.cmake")
  INCLUDE("/Users/ptx/Projects/OE/OEIphone/projects/OEIphone/Xcode/src/Geometry/cmake_install.cmake")
  INCLUDE("/Users/ptx/Projects/OE/OEIphone/projects/OEIphone/Xcode/src/Logging/cmake_install.cmake")
  INCLUDE("/Users/ptx/Projects/OE/OEIphone/projects/OEIphone/Xcode/src/Math/cmake_install.cmake")
  INCLUDE("/Users/ptx/Projects/OE/OEIphone/projects/OEIphone/Xcode/src/Meta/cmake_install.cmake")
  INCLUDE("/Users/ptx/Projects/OE/OEIphone/projects/OEIphone/Xcode/src/Renderers/cmake_install.cmake")
  INCLUDE("/Users/ptx/Projects/OE/OEIphone/projects/OEIphone/Xcode/src/Resources/cmake_install.cmake")
  INCLUDE("/Users/ptx/Projects/OE/OEIphone/projects/OEIphone/Xcode/src/Scene/cmake_install.cmake")
  INCLUDE("/Users/ptx/Projects/OE/OEIphone/projects/OEIphone/Xcode/src/Utils/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

