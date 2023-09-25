// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2007-2008 - INRIA - Bruno JOFRET <bruno.jofret@inria.fr>
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// =============================================================================
// Unitary tests for mdelete function
// =============================================================================

// TEST 1 : dummy file
cd TMPDIR;
r = mputl('I am a dummy String', 'dummyFile.dummy');
if r <> %T then pause,end

lsResult = ls("dummyFile.dummy");

// Testing if the file created exists
if lsResult == []      then pause,end

// Now trying to delete it
mdelete dummyFile.dummy
// Test if the file has been deleted or not
lsResult = ls("dummyFile.dummy")

// Testing if the file is effectively dead
if lsResult <> []      then pause,end
