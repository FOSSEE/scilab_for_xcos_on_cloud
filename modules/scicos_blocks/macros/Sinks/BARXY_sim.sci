//
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2011-2011 - DIGITEO - Bruno JOFRET
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2.1-en.txt
//
//

function block=BARXY_sim(block,flag)
    //disp("Calling BARXY_sim with flag = "+string(flag))

    // Find the process id of the running scilab instance
    pid = getpid();
    // Specify the filename for the common log file
    scilab_filename = 'scilab-log-'+ string(pid) +'.txt';

    if flag == 4 | flag == 6
        // Initialisation || Re-Init
        // if already exists (stopped) then reuse
        f = findobj("Tag", block.uid);
        if f == [] then

            // Open file in append mode
            fd = mopen(scilab_filename,'a+');
            // Adding line for Initialization 
            mfprintf(fd,'%d || Initialization %d\n', pid, 11);
            mclose(fd);

            f = figure("Tag", block.uid, "Figure_name", "BARXY");
        else
            scf(f);
            clf();
        end

        f.background = -2;
        a=gca();
        a.data_bounds = block.rpar';
        a.isoview = "on";
        u1=block.inptr(1);
        u2=block.inptr(2);
        j = 0;
        xsegs(u1, u2, 1:size(u1,"*")/2)
        e = gce();
        e.thickness = block.ipar;
    end

    if flag ==  1
        // Output update
        u1=block.inptr(1);
        u2=block.inptr(2);

        f = findobj("Tag", block.uid);

        a = f.children;

        // Open the file in append mode
        fd = mopen(scilab_filename,'a+');
        // Block_id of BARXY - 11, Print the co-ordinates of line, Print the name of block and line thickness
        mfprintf(fd,'%d || Block Identifier %d %f %f %f %f %f %f %f %f %s%s\n', pid, 11, u1(1), u2(1), u1(2), u2(2), block.rpar(1), block.rpar(2), block.rpar(3), block.rpar(4), 'BARXY ', string(block.ipar));
        mclose(fd);

        a.children(1).data = [u1, u2]

    end

endfunction