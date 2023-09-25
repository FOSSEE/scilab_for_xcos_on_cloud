
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2005-2008 - INRIA - Allan CORNET <allan.cornet@inria.fr>
//
// Copyright (C) 2012 - 2016 - Scilab Enterprises
//
// This file is hereby licensed under the terms of the GNU GPL v2.0,
// pursuant to article 5.3.4 of the CeCILL v.2.1.
// This file was originally licensed under the terms of the CeCILL v2.1,
// and continues to be available under such terms.
// For more information, see the COPYING file which you should have received
// along with this program.

if (isdef("genlib") == %f) then
    exec(SCI+"/modules/functions/scripts/buildmacros/loadgenlib.sce");
end

genlib("special_functionslib","SCI/modules/special_functions/macros",%f,%t);
