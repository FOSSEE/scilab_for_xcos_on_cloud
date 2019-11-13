//
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2011-2011 - DIGITEO - Bruno JOFRET
//
// Copyright (C) 2012 - 2016 - Scilab Enterprises
//
// This file is hereby licensed under the terms of the GNU GPL v2.0,
// pursuant to article 5.3.4 of the CeCILL v.2.1.
// This file was originally licensed under the terms of the CeCILL v2.1,
// and continues to be available under such terms.
// For more information, see the COPYING file which you should have received
// along with this program.
//
//

function block=BARXY_sim(block,flag)
    fd = getLogFilePointer();
    block_id = 11;

    //disp("Calling BARXY_sim with flag = "+string(flag))
    if flag == 4 | flag == 6
        // Initialisation || Re-Init
        // if already exists (stopped) then reuse
        f = findobj("Tag", block.uid);
        if f == [] then
            f = figure("Tag", block.uid, "Figure_name", "BARXY");
            mfprintf(fd, 'Initialization %s\n', block.uid);
        else
            scf(f);
            clf();
        end

        f.background = -2;
        isoview("on")
        a=gca();
        a.data_bounds = block.rpar';
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
        a.children(1).data = [u1, u2]

        // Block_id of BARXY - 11, Print the co-ordinates of line, Print the name of block and line thickness
        mfprintf(fd, '%d || %s || %f %f %f %f %f %f %f %f %s %s\n', block_id, block.uid, u1(1), u2(1), u1(2), u2(2), block.rpar(1), block.rpar(2), block.rpar(3), block.rpar(4), string(block.ipar), 'BARXY');
    end

endfunction

function fd=getLogFilePointer()
    global scilab_fd
    if scilab_fd == []
        scilab_filename = "/proc/self/fd/123";
        [scilab_fd, err] = mopen(scilab_filename, "a");
        if scilab_fd < 0 | err < 0
            mprintf("Could not open %s: %d\n", scilab_filename, err);
            scilab_filename = 'scilab-log-'+ string(getpid()) +'.txt';
            [scilab_fd, err] = mopen(scilab_filename, "a");
            if scilab_fd < 0 | err < 0
                mprintf("Could not open %s: %d\n", scilab_filename, err);
                scilab_fd = []
            end
        end
    end
    fd = scilab_fd
endfunction
