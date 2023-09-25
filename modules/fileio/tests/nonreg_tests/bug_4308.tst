// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) DIGITEO - 2009 - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 4308 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/4308
//
// <-- Short Description -->
// if mdelete is called with a path on a non empty directory
// the directory access modes are changed ('x' and 'r' rights removed).

cd(TMPDIR);
mkdir('bug_4308');
cd('bug_4308');
mputl('a','a');
mputl('b','b');
mkdir('c');
cd('c');
mputl('d','d');
mputl('e','e');

x1 = fileinfo(TMPDIR + '/bug_4308/c');

for f = listfiles(TMPDIR + '/bug_4308/*')'
  mdelete(f);
end

x2 = fileinfo(TMPDIR + '/bug_4308/c');

if x1(2) <> x2(2) then pause,end


