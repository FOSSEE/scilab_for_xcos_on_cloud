//<-- CLI SHELL MODE -->
// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008 - INRIA - Pierre MARECHAL <pierre.marechal@inria.fr>
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- Non-regression test for bug 2647 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/2647
//
// <-- Short Description -->
//    I did the following "experiment" in Scilab-4.1.1 under FreeBSD-6.2
//
//    a=cos(3);
//    b=sin(3);
//    a^2+b^2
//
//    ans =  2    ????
//
//    When replacing the number 3 by, for example, the number 4 the right number for
//    a^2+b^2 is returned.
//
//    In Scilab-4.1.2 under Windows-XP the bug is not manifesting itself.

// a=cos(3);
// b=sin(3);
// 
// 
// my_log_file = TMPDIR+"/bug_2647.log"
// 
// diary(my_log_file);
// disp(a^2+b^2);
// diary(0);
// 
// c = mgetl(my_log_file);
// 
// if stripblanks(c(4))<>"2." then pause, end



