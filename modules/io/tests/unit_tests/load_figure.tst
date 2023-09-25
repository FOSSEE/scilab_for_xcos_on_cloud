// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2013 - Scilab Enterprises - Antoine ELIAS
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- TEST WITH GRAPHIC -->
//

f = gcf();
sleep(500);
f.resizefcn = "disp(""should not be called"")";
save("TMPDIR/load_uimenu.sod", "f");
delete(gcf());clear f;
load("TMPDIR/load_uimenu.sod");
assert_checkequal(get(f, "type"), "Figure");
