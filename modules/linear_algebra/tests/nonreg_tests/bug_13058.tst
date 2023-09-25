// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2014 - Scilab Enterprises - Adeline CARNIS
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 13058 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/13058
//
// <-- Short Description -->
//    The release 3.1.4 of arpack ng library fixes this bug.
// =============================================================================

A = [2.486880466472303  2.008746355685131  1.655976676384840  1.571428571428571  1.469387755102041  1.635568513119533  1.927113702623907
2.008746355685131  2.364431486880466  1.967930029154519  1.696793002915452  1.551020408163265  1.530612244897959  1.635568513119533
1.655976676384840  1.967930029154519  2.405247813411079  1.947521865889213  1.758017492711370  1.551020408163265  1.469387755102041
1.571428571428571  1.696793002915452  1.947521865889213  2.323615160349854  1.947521865889213  1.696793002915452  1.571428571428571
1.469387755102041  1.551020408163265  1.758017492711370  1.947521865889213  2.405247813411079  1.967930029154519  1.655976676384840
1.635568513119533  1.530612244897959  1.551020408163265  1.696793002915452  1.967930029154519  2.364431486880466  2.008746355685131
1.927113702623907  1.635568513119533  1.469387755102041  1.571428571428571  1.655976676384840  2.008746355685131  2.486880466472303];

d0 = spec(A);

B = eye(7, 7);
d1 = eigs(A, B, 4, "BE");
assert_checkalmostequal(d1, [d0(1:2); d0($-1:$)], 1.e-12);
