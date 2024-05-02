#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "NemaTode::NemaTode" for configuration ""
set_property(TARGET NemaTode::NemaTode APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(NemaTode::NemaTode PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libNemaTode.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS NemaTode::NemaTode )
list(APPEND _IMPORT_CHECK_FILES_FOR_NemaTode::NemaTode "${_IMPORT_PREFIX}/lib/libNemaTode.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
