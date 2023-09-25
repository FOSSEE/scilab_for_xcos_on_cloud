// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2013 - Scilab Enterprises
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- CLI SHELL MODE -->

loadXcosLibs();

%txt = [ ...
"a=1";
"function r=foo(v)";
"    r=v;";
"endfunction";
"b=2";
"c=foo(3)";
"d=ones(1,1);";
""];

%ierrRef = 0;
%llRef = struct("a", 1, "b", 2, "c", 3, "d", 1);

%ll = struct();
[%ll, %ierr] = script2var(%txt, %ll);
assert_checkequal(%ierr, %ierrRef);
assert_checkequal(%ll, %llRef);

[%ll, %ierr] = script2var(%txt, %ll);
assert_checkequal(%ierr, %ierrRef);
assert_checkequal(%ll, %llRef);
