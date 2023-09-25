// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2011 - INRIA - Serge Steer
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->

// <-- Non-regression test for bug 10298 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/10298
//
// <-- Short Description -->
// Example of datatipSetDisplay generates an error

x=linspace(-1,1,1000);
clf()
plot(x,sinc(20*x),x,1-x.^2);
e=gce();e=e.children;
d21=datatipCreate(e(2),600);
d22=datatipCreate(e(2),200);
d1=datatipCreate(e(1),700);

function str=mydisplay(datatip_handle)
    pt = datatip_handle.data;
    str=msprintf('sinc(%-0.2g)=%-0.2g', 20*pt(1),pt(2))
endfunction

assert_checktrue(execstr("datatipSetDisplay(e(2),mydisplay)","errcatch")==0); // Function
assert_checktrue(execstr("datatipSetDisplay(e(2),""mydisplay"")","errcatch")==0); // Function name
assert_checkequal(d21.text, "sinc(4)=-0.19");
assert_checkequal(d22.text, "sinc(-12)=-0.042");
