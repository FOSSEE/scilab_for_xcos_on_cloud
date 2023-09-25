// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2013 - Scilab Enterprises - Sylvestre Ledru
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

f = jwrapinfloat(%pi);
assert_checkalmostequal(junwrap(f), %pi, 10^-7);
