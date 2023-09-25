// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2023 - Dassault Systemes - Adeline CARNIS
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- Non-regression test for bug 8666 -->
//
// <-- CLI SHELL MODE -->
//
// <-- Gitlab URL -->
// https://gitlab.com/scilab/scilab/-/issues/8666
//
// <-- Short Description -->
// Linear algebra demonstration failed with xerbla error.
funcprot(0);

H=[1.    1.    1.    0.;
2.   -1.    0.    1;
1.    0.    1.    1.;
0.    1.    2.   -1];

ww = spec(H);

[X, d] = schur(H, "c");
assert_checktrue(norm(X * X' - eye(X), 1) > %eps);

[X, d] = schur(H, "d");
assert_checktrue(norm(X * X' - eye(X), 1) > %eps);

function [flg] = sel(x)
    flg = %f;
    if abs(x - ww(3)) < 0.0001 | abs(x - ww(4)) < 0.00001 then flg = %t,end
endfunction

[X, d] = schur(H, sel);
assert_checktrue(norm(X * X' - eye(X), 1) > %eps);

function [flg] = sel(x, y)
    flg = %f;
    if abs(x / y - ww(3)) < 0.0001 | abs(x / y - ww(4)) < 0.00001 then flg = %t,end
endfunction

[X, d] = schur(H, eye(H), sel);
assert_checktrue(norm(X * X' - eye(X), 1) > %eps);