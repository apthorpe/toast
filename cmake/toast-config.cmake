# config file for the build tree
# Allow other CMake projects to find this one without installing jsonfortran
# (e.g. only configuring and building it)
# No need to use CMakePackageConfigHelpers since we know all the paths with
# certainty in the build tree.

set ( @CMAKE_PROJECT_NAME@_VERSION @VERSION@ )

@COMPILER_CONSISTENCY_CHECK@

# Make targets available to be built
include ( "@CMAKE_BINARY_DIR@/@PACKAGE_NAME@-targets.cmake" )

# Tell the compiler where to find the mod files
set ( @CMAKE_PROJECT_NAME@_INCLUDE_DIRS "@TOAST_MODULE_DIR@" )
