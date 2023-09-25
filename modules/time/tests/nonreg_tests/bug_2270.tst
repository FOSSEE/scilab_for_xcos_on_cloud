// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2007-2008 - INRIA - Pierre MARECHAL <pierre.marechal@inria.fr>
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->
// <-- ENGLISH IMPOSED -->

// <-- Non-regression test for bug 2270 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/2270
//
// <-- Short Description -->
//    datenum(Y,M,D) issues an incorrect error message when the third 
//    parameter is invalid. The error should say 'The third argument must be 
//    between 1 and 31', depending on the actual number of days in that 
//    specific month.

execstr('datenum(2006,12,32)','errcatch');
error_str = lasterror();
if stripblanks(error_str) <> "datenum: Wrong value for input argument #3: Must be between 1 and 31."  then pause,end
