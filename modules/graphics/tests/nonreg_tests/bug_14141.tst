// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2015 - Scilab Enterprises - Cedric Delamarre
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
// <-- Non-regression test for bug 14141 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/14141
//
// <-- Short Description -->
// recursive insertion: gcf().attribute=value => "Wrong insertion : function or macro are not expected".


plot2d();
assert_checkequal(gcf().visible, "on");
gcf().visible = %f;
assert_checkequal(gcf().visible, "off");
