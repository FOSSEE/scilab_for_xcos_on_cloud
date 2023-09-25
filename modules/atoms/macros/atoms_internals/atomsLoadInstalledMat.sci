// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2009 - DIGITEO - Pierre MARECHAL <pierre.marechal@scilab.org>
//
// Copyright (C) 2012 - 2016 - Scilab Enterprises
//
// This file is hereby licensed under the terms of the GNU GPL v2.0,
// pursuant to article 5.3.4 of the CeCILL v.2.1.
// This file was originally licensed under the terms of the CeCILL v2.1,
// and continues to be available under such terms.
// For more information, see the COPYING file which you should have received
// along with this program.

// Internal function

function matrix_out = atomsLoadInstalledMat(section)

    rhs = argn(2);

    // Init the output argument
    // =========================================================================
    matrix_out = [];

    // Check number of input arguments
    // =========================================================================

    if rhs <> 1 then
        error(msprintf(gettext("%s: Wrong number of input argument: %d expected.\n"),"atomsLoadInstalledMat",1));
    end

    // Check input argument
    // =========================================================================

    if type(section) <> 10 then
        error(msprintf(gettext("%s: Wrong type for input argument #%d: string expected.\n"),"atomsLoadInstalledMat",1));
    end

    if size(section,"*")<>1 then
        error(msprintf(gettext("%s: Wrong size for input argument #%d: string expected.\n"),"atomsLoadInstalledMat",1));
    end

    if and(section<>["user","allusers","all"]) then
        error(msprintf(gettext("%s: Wrong value for input argument #%d: ''user'',''allusers'' or ''all'' expected.\n"),"atomsLoadInstalledMat",1));
    end

    // Define the path of the file that will record the change according to
    // the "section" value
    // =========================================================================
    installed_file = atomsPath("system",section) + "installed.bin";

    // Loop on installed files
    // =========================================================================

    for i=1:size(installed_file,"*")

        // Does the file exist,
        // If yes, load the tree
        // If not, the job is done for this file
        // ---------------------------------------------------------------------

        if fileinfo(installed_file(i)) <> [] then
            load(installed_file(i),"installed_mat");
        else
            continue;
        end

        matrix_out = [ matrix_out ; installed_mat ];
    end

endfunction
