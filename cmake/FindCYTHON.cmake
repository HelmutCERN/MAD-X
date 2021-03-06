# Find the Cython compiler.
#
# This code sets the following variables:
#
# CYTHON_EXECUTABLE

#=============================================================================
# Copyright 2011 Kitware, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#=============================================================================
# 
# Modified by Yngve Inntjore Levinsen to handle required argument

find_program( CYTHON_EXECUTABLE NAMES cython cython2 )

include( FindPackageHandleStandardArgs )
FIND_PACKAGE_HANDLE_STANDARD_ARGS( Cython REQUIRED_VARS CYTHON_EXECUTABLE )

mark_as_advanced( CYTHON_EXECUTABLE )

if(CYTHON_FIND_REQUIRED AND NOT CYTHON_FOUND)
    message(FATAL_ERROR "Could not find Cython")
endif()