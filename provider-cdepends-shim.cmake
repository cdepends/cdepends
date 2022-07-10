cmake_minimum_required(VERSION 3.24)

if(NOT DEFINED cdepends_internal_PROVIDER)

include(FetchContent)
FetchContent_Declare(cdepends
    GIT_URL https://github.com/cdepends/cdepends.git
    GIT_SHALLOW True
    GIT_TAG origin/release
)

FetchContent_GetProperties(cdepends)
if(NOT cdepends_POPULATED)
  # Fetch the content using previously declared details
  FetchContent_Populate(cdepends)
endif()

list(PREPEND CMAKE_PROJECT_TOP_LEVEL_INCLUDES "${cdepends_SOURCE_DIR}/provider/provider-cdepends.cmake")

endif()