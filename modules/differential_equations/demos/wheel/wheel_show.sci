//
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) ENPC
// Copyright (C) 2008 - INRIA
// Copyright (C) 2010 - DIGITEO - Allan CORNET
//
// This file is distributed under the same license as the Scilab package.
//

function []=wheel_show(xx,t,p)

    //[]=show(xx,t,p)
    // Just show the wheel evolution
    // t ans p are the spherical angles of the observation point
    // given in radian
    // f_name is the function name to use for display
    // can be wheel2
    //                     .    .   .
    // xx= [theta,phi,psi,teta,phi,psi,x,y]


    [lhs,rhs]=argn(0)
    if rhs <= 2 , p=%pi/3;end
    if rhs <= 2 , t=%pi/3;end
    if rhs <= 3 , slowflag=0;end
    nstep=1;r1=1.0;  //change nstep for postscript
    [nnr,nn]=size(xx);
    time=1:nstep:nn;
    //------------ generation of the wheel
    //[1] a set of points on the wheel
    //the first one is the contact point
    //the coordinates are given in the (u,v,w) space
    // as a matrix xu(:,t) ....
    nnn= 24
    l  = (1/nnn)*( 2*%pi)*(0:nnn)'
    nu = prod(size(l));
    xu = r1*cos(l).*.ones(time);
    yu = r1*sin(l).*.ones(time);
    zu = zeros(l).*.ones(time);

    //[2] Adding rays ( they are moving with time in the (u,v,w) space
    //turning around w with angle psi
    //in xr,yr,zr : four moving points plus the center
    l       = ones(4,1).*.xx(3,time) + [0;%pi/2;%pi;3*%pi/2].*.ones(time);
    xr      = r1*cos(l).*.[0;1];
    yr      = r1*sin(l).*.[0;1];
    zr      = zeros(l).*.[0;1];
    [nr,pr] = size(xr);

    //[3] using wheelg to transform these vectors in the (x,y,z) space
    [xu,yu,zu]=wheelg(nu,size(time,"*"),xu,yu,zu,xx(:,time));
    [xr,yr,zr]=wheelg(nr,size(time,"*"),xr,yr,zr,xx(:,time));

    xmin=min(xu);
    xmax=max(xu);
    ymin=min(yu);
    ymax=max(yu);
    zmin=min(zu);
    zmax=max(zu);

    //[4] creating the graphic objects
    drawlater()
    show_window();
    title([_("Simulation of mechanical system with holonomic constraints")
    _("Differential equations code generated by Maple")])
    isoview();
    curAxe                 = gca();
    curAxe.axes_visible    = "off"
    curaxe.tight_limits    = "on";
    curAxe.data_bounds     = [xmin ymin zmin;xmax ymax zmax];
    curAxe.rotation_angles = [t p]*180/%pi
    // The floor
    xfpoly([xmin xmax xmax xmin xmin],[ymin ymin ymax ymax ymin])
    e=gce();
    e.background    = color("lightgray");
    // The weel
    xpoly(xu(:,1),yu(:,1));e=gce();e.data(:,3)=zu(:,1);
    wheel           = gce();
    wheel.thickness = 3;
    //the rays
    xsegs(matrix(xr(:,1),2,-1),matrix(yr(:,1),2,-1),1:4);
    rays            = gce();
    rays.data(:,3)  = zr(:,1);
    rays.thickness  = 3;
    //The trace
    xpoly(xu(1,1),yu(1,1));traj=gce();
    traj.data(3)    = zu(1,1);
    drawnow()

    //[5] animation
    [n1,n2] = size(xu);
    wheel_rti = 0.03;
    
    realtimeinit(wheel_rti);realtime(0);
    for i=2:1:n2-1,
        realtime(i);
        if is_handle_valid(curAxe) then
            drawlater();
            wheel.data  = [xu(:,i) yu(:,i) zu(:,i)];
            traj.data   = [traj.data; xu(1,i),yu(1,i),zu(1,i)];
            rays.data   = [xr(:,i) yr(:,i) zr(:,i)];
            drawnow()
        else
            break;
        end
    end

endfunction

function [xxu,yyu,zzu]=wheelgs(n,t,xu,yu,zu,xx)

    // slower version without dynamic link

    r=1.0
    [n,p]=size(xu);
    xxu=xu;
    yyu=yu;
    zzu=zu;
    for i1=1:n;
        cs2 = cos(xx(2,:))
        cs1 = cos(xx(1,:))
        si1 = sin(xx(1,:))
        si2 = sin(xx(2,:))
        xxu(i1,:) = xx(7,:)+r*(cs2.*cs1.*xu(i1,:)-si1.*yu(i1,:)+si2.*cs1.*zu(i1,:));
        yyu(i1,:) = xx(8,:)+r*(cs2.*si1.*xu(i1,:)+cs1.*yu(i1,:)+si2.*si1.*zu(i1,:));
        zzu(i1,:) = r*si2 +r*( -si2.*xu(i1,:)+cs2.*zu(i1,:));
    end

endfunction


function []=wheel_build_and_load()

    // since this demo can be run by someone
    // who has no write access in this directory
    // we use TMPDIR

    if ~c_link("wheel") then
        my_cur_path = pwd();
        chdir(TMPDIR);
        path  = SCI+"/modules/differential_equations/demos/wheel/Maple";
        fcode = mgetl(path+"/dlslv.f");mputl(fcode,"dlslv.f");
        fcode = mgetl(path+"/wheel.f");  mputl(fcode,"wheel.f");
        fcode = mgetl(path+"/wheelg.f"); mputl(fcode,"wheelg.f");
        fcode = mgetl(path+"/sci_wheelg.c");mputl(fcode, "sci_wheelg.c");
        files = ["wheel.f","wheelg.f","dlslv.f" ];
        ilib_verbose(0);
        lib_ = ilib_for_link(["wheel";"wheelg"], files, [],"f");
        link(lib_, "wheel", "f");
        ilib_build("gw_wheel",["wheelg","sci_wheelg"],"sci_wheelg.c",basename(lib_));
        exec("loader.sce",-1);
        chdir(my_cur_path);
    end
endfunction
