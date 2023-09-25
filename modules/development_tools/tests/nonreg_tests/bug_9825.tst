// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2011 - DIGITEO - Michael Baudin
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 9825 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/9825
//
// <-- Short Description -->
// The assert_computedigits function generously gives too large correct digits.

function flag = MY_assert_equal ( computed , expected )
  if computed==expected then
    flag = 1;
  else
    flag = 0;
  end
  if flag <> 1 then pause,end
endfunction

e = 1;
c = nearfloat("pred",e);
d = assert_computedigits(e,c,2);
MY_assert_equal ( d , 52 );
//
e = 1;
d = assert_computedigits(e,e,2);
MY_assert_equal ( d , 53 );
