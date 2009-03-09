// -*- lsst-c++ -*-
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

