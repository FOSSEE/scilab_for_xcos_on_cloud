// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) ????-2008 - INRIA
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug E -->
//
// <-- OLD BUG -->

if or(cumprod([1+1*%i,2+2*%i,3+3*%i]) <> cumprod([1+1*%i,2+2*%i,3+3*%i],2)) then pause,end
