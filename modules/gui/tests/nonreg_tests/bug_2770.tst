// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008 - INRIA - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->
//
// <-- Non-regression test for bug 2270 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/2270
//
if getscilabmode() == 'STD' then
  clipboard("copy","this is a string");
  str = clipboard("paste");
  if str <> "this is a string" then pause,end
end


