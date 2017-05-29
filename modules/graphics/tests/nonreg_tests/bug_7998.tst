// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2012 - DIGITEO - Antoine ELIAS
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- TEST WITH GRAPHIC -->
//
// <-- Non-regression test for bug 7998 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=7998
//
// <-- Short Description -->
//%h_get failed on heterogeneous handle matrix

cols = [1 2 3 4 5];
lgd = [];
for k = 1 : 5
  x = linspace(0,20,1000);
  y = sin ( k * x );
  plot(x,y)
  str = msprintf("k=%d",k);
  lgd($+1) = str;
end
h = gcf();
for k = 1 : 5
  h.children.children.children(k).foreground = cols(k);
end
legend(lgd);
err = execstr("h.children.children.children", "errcatch");
assert_checkequal(err, 0);
