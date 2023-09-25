// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2009 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- Non-regression test for bug 4702 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/4702
//
// <-- Short Description -->
// on some case, dos(cmd) does not return results

[output, bStat] = dos('ipconfig');
if bStat == %f then pause,end
if output == [] then pause,end


