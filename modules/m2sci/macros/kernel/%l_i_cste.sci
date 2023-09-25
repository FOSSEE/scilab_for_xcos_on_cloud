// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) ???? - INRIA - Scilab
//
// Copyright (C) 2012 - 2016 - Scilab Enterprises
//
// This file is hereby licensed under the terms of the GNU GPL v2.0,
// pursuant to article 5.3.4 of the CeCILL v.2.1.
// This file was originally licensed under the terms of the CeCILL v2.1,
// and continues to be available under such terms.
// For more information, see the COPYING file which you should have received
// along with this program.

function cste=%l_i_cste(field,inslist,cste)

    if field=="dims" then
        cste.infer.dims=inslist
    elseif field=="type" then
        cste.infer.type=inslist
    else
        error(gettext("Not yet implemented."))
    end
endfunction
