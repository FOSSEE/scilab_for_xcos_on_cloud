// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2011 - DIGITEO - Bruno JOFRET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->

// test xrects

a= gca();
a.data_bounds=[0 0; 8 8];
xrects([4;5;1;1], 4);

e = gce();
assert_checkequal(e.type, "Compound");
assert_checkequal(size(e.children), [1 1]);

e = e.children(1);
assert_checkequal(e.parent.type, "Compound");
assert_checkequal(e.children, []);
assert_checkequal(e.mark_mode, "off");
assert_checkequal(e.mark_style, 0);
assert_checkequal(e.mark_size_unit, "tabulated");
assert_checkequal(e.mark_size, 0);
assert_checkequal(e.mark_foreground, -1);
assert_checkequal(e.mark_background, -2);
assert_checkequal(e.line_mode, "off");
assert_checkequal(e.fill_mode, "on");
assert_checkequal(e.line_style, 1);
assert_checkequal(e.thickness, 1);
assert_checkequal(e.foreground, -1);
assert_checkequal(e.background, 4);
assert_checkequal(e.data, [4,5,1,1]);
assert_checkequal(e.visible, "on");
assert_checkequal(e.clip_state, "off");
assert_checkequal(e.clip_box, []);
assert_checkequal(e.user_data, []);

