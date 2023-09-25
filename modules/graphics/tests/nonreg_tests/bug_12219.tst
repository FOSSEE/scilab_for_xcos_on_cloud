// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2013 - Scilab Enterprises - Bruno JOFRET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- TEST WITH GRAPHIC -->
//
// <-- Non-regression test for bug 12219 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/12219
//
// <-- Short Description -->
// delete('all') delete current axes and does not create a new one

f = gcf();
oldAxeUID = f.children(1).UID;

delete("all");

assert_checkequal(size(f.children, '*'), 1);
assert_checkequal(f.children(1).type, "Axes");
assert_checktrue(f.children(1).UID <> oldAxeUID);

plot2d();
a = gca();
assert_checkequal(size(a.children, '*'), 1);
assert_checkequal(a.children(1).type, "Compound");
delete('all');

a = gca();
assert_checkequal(size(a.children, '*'), 0);
assert_checkequal(a.children, []);

