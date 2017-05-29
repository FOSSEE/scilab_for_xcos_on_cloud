// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2009 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 4676 -->
//

// <-- Short Description -->
// diary() removes whitespaces characters from the output of mprintf()
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=4676
//

diary_file = pathconvert(TMPDIR+'/bug_diary_4676.txt',%F);
id = diary(diary_file);
mprintf('\nString with whitespaces\n')
diary(id,'close');
mgetl(diary_file);
