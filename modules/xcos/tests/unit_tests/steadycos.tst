// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008 - INRIA
// Copyright (C) 2009 - DIGITEO
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- ENGLISH IMPOSED -->
// <-- XCOS TEST -->


ilib_verbose(0);

prot = funcprot();
funcprot(0);
exec("SCI/modules/xcos/tests/unit_tests/PENDULUM_ANIM.sci");
exec("SCI/modules/xcos/tests/unit_tests/anim_pen.sci");
funcprot(prot);
importXcosDiagram("SCI/modules/xcos/tests/unit_tests/pendulum_anim45.zcos");

M  = 10;
m  = 3;
l  = 3;
ph = 0.1;
z0 = -4;
th0 = .02;

for i=1:length(scs_m.objs)
    if typeof(scs_m.objs(i))=="Block" & scs_m.objs(i).gui=="SUPER_f" then
        scs_m = scs_m.objs(i).model.rpar;
        break;
    end
end

//scs_m = scs_m.objs(5).model.rpar;
[X,U,Y,XP] = steadycos(scs_m,[],[],[],[],1,1:$);
