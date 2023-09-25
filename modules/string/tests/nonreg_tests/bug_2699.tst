// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008 - INRIA - Pierre MARECHAL <pierre .marechal@inria.fr>
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 2699 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/2699
//
// <-- Short Description -->
// strcat('') produces an error. In scilab-4.1.2, strcat('') returns an empty string

if strcat("")              <> "" then pause,end
if strcat( ["","" ; "",""] ) <> "" then pause,end
if strcat( ["" ""] , "" ) <> "" then pause,end
