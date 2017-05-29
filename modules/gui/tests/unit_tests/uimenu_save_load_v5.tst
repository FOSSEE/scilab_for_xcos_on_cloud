// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008 - INRIA - Vincent COUVERT 
// 
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at    
// http://www.cecill.info/licences/Licence_CeCILL_V2.1-en.txt

// This test check save and load functions used with uimenus
// The following functions are tested:
//  - SCI/modules/graphics/macros/%h_save.sci
//  - SCI/modules/graphics/macros/%h_load.sci

warning("off");

// Create an uimenu
f = scf(0);
h = uimenu("parent", f);
// Change value of each property to be sure it is saved and loaded correctly
h.enable = "off"; // Default is "on"
h.foregroundcolor = [1 1 1]; // Default is [0.0627451,0.0627451,0.0627451]
h.label = "My uimenu"; // Default is ""
h.visible = "off"; // Default is "on"
h.callback = "disp(1)"; // Default is ""
h.callback_type = 1; // Default is 0
h.tag = "My uimenu tag"; // Default is ""

// Save figure contents
save(TMPDIR + "/uimenu.scg", h);

hsaved = h;
clear h;

// Load saved handle
load(TMPDIR + "/uimenu.scg");

// Check if properties are equal
if h.enable<>hsaved.enable then pause; end
if h.foregroundcolor<>hsaved.foregroundcolor then pause; end
if h.label<>hsaved.label then pause; end
if h.visible<>hsaved.visible then pause; end
if h.callback<>hsaved.callback then pause; end
if h.callback_type<>hsaved.callback_type then pause; end
if h.tag<>hsaved.tag then pause; end
