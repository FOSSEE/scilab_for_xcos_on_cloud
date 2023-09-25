// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2013 - Scilab Enterprises - Adeline CARNIS
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 11065 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/11065
//
// <-- Short Description -->
//    The second output argument of unique function contained the wrong position.
// =============================================================================

A=[1 2 3;4 5 6;4 5 6;7 8 9;8 9 10;4 5 6;9 10 11];
B=[A;10 11 12];

[x, k] = gsort(A, "lr", "i");
expectedX = [1 2 3;4 5 6;4 5 6;4 5 6;7 8 9;8 9 10;9 10 11];
expectedK = [1 2 3 6 4 5 7]';

assert_checkequal(x, expectedX);
assert_checkequal(k, expectedK);

[x, k] = gsort(A, "lr", "d");
expectedX = [9 10 11;8 9 10;7 8 9;4 5 6;4 5 6;4 5 6;1 2 3];
expectedK = [7 5 4 2 3 6 1]';

assert_checkequal(x, expectedX);
assert_checkequal(k, expectedK);

[x, k] = gsort(A, "lr");
expectedX = [9 10 11;8 9 10;7 8 9;4 5 6;4 5 6;4 5 6;1 2 3];
expectedK = [7 5 4 2 3 6 1]';

assert_checkequal(x, expectedX);
assert_checkequal(k, expectedK);

[Au,iu]=unique(A,"r");
expectedA = [1 2 3;4 5 6;7 8 9;8 9 10;9 10 11];
expectedI = [1 2 4 5 7]';

assert_checkequal(Au, expectedA);
assert_checkequal(iu, expectedI);

[Bu,ku]=unique(B,"r");
expectedB = [1 2 3;4 5 6;7 8 9;8 9 10;9 10 11;10 11 12];
expectedK = [1 2 4 5 7 8]';

assert_checkequal(Bu, expectedB);
assert_checkequal(ku, expectedK);
