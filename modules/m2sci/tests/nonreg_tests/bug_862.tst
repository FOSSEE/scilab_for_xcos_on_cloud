// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) ????-2008 - INRIA - Vincent COUVERT <vincent.couvert@inria.fr>
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->
// <-- ENGLISH IMPOSED -->

// <-- Non-regression test for bug 862 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=862
//
// <-- Short Description -->
//    Conversion si bad for instructions such as:
//    ->Matlab: 
//    a(1)=0;
//    with a not initialised
//    ->Scilab conversion: 
//    a = mtlb_i(a,1,0);
//
//    Execution crashes
//    a = mtlb_i(a,1,0)
//               !--error     4
//    undefined variable : a

MFILECONTENTS="a(1)=0;";

MFILE=TMPDIR+"/bug862.m";
SCIFILE=TMPDIR+"/bug862.sci";

fd=mopen(MFILE,"w");
mputl(MFILECONTENTS,fd);
mclose(fd);

mfile2sci(MFILE,TMPDIR);

fd=mopen(SCIFILE,"r");
SCIFILECONTENTS=mgetl(fd,-1);
mclose(fd);

SCIFILECONTENTSREF=["";
"a(1,1) = 0;"];

if or(SCIFILECONTENTSREF<>SCIFILECONTENTS) then pause,end
