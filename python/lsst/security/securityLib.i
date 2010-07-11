// -*- lsst-c++ -*-

/* 
 * LSST Data Management System
 * Copyright 2008, 2009, 2010 LSST Corporation.
 * 
 * This product includes software developed by the
 * LSST Project (http://www.lsst.org/).
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the LSST License Statement and 
 * the GNU General Public License along with this program.  If not, 
 * see <http://www.lsstcorp.org/LegalNotices/>.
 */
 
%define securityLib_DOCSTRING
"
Access to the lsst::security classes
"
%enddef

%feature("autodoc", "1");
%module(package="lsst.security", docstring=securityLib_DOCSTRING) securityLib

%{
#include "lsst/daf/base.h"
#include "lsst/security/Security.h"
%}

%include "lsst/p_lsstSwig.i"

%import "lsst/daf/base/baseLib.i"

%lsst_exceptions();

SWIG_SHARED_PTR_DERIVED(Security, lsst::daf::base::Citizen, lsst::security::Security)

%include "lsst/security/Security.h"

