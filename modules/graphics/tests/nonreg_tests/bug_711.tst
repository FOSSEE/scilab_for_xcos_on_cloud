// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008-2008 - INRIA - Jean-Baptiste Silvy
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->

// <-- Non-regression test for bug 711 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=711
//
// <-- Short Description -->
// Problem with window position handling

// specify init position
initPos = [100,100];
pos = initPos;

// window should not move
for k=1:10,
  xset('wpos', pos);
  pos = xget('wpos');
end
if (pos <> initPos) then pause; end;

// also
pos = initPos;

f=gcf();
for k=1:10,
  f.figure_position=pos;
  pos = f.figure_position;
end
if (pos <> initPos) then pause; end;




