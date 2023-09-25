// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2011 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- CLI SHELL MODE -->
//
// <-- Non-regression test for bug 4833 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/4833
//
// <-- Short Description -->
//  msprintf() interpreted "\n" as a carriage return even if "\n"
//  is supplied by the 2nd input argument.
//

if msprintf("string : --%s--","\n") <> "string : --\n--" then pause, end

R = msprintf("%s\n%s", "titi", "toto");
REF = ["titi";"toto"];
if or(R <> REF) then pause, end

R = msprintf("%s %s", "titi\n", "toto");
REF = "titi\n toto";
if R <> REF then pause, end

R = msprintf("%s %s", "titi\n", "toto\n");
REF = "titi\n toto\n";
if R <> REF then pause, end

R = msprintf("%s\n%s", "titi\n", "toto\n");
REF = ["titi\n";"toto\n"];
if or(R <> REF) then pause, end
