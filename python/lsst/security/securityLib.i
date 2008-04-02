// -*- lsst-c++ -*-
%define securityLib_DOCSTRING
"
Access to the lsst::security classes
"
%enddef

%feature("autodoc", "1");
%module(package="lsst.security", docstring=securityLib_DOCSTRING) securityLib

%{
#include "lsst/security/Security.h"
%}

%inline %{
namespace lsst { namespace security { } }
    
using namespace lsst::security;
%}

%init %{
%}

%include "lsst/p_lsstSwig.i"

%include "lsst/security/Security.h"


/******************************************************************************/
// Local Variables: ***
// eval: (setq indent-tabs-mode nil) ***
// End: ***
