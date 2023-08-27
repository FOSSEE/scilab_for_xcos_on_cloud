// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2020 - Samuel GOUGEON
//
// This file is hereby licensed under the terms of the GNU GPL v2.0,
// pursuant to article 5.3.4 of the CeCILL v.2.1.
// This file was originally licensed under the terms of the CeCILL v2.1,
// and continues to be available under such terms.
// For more information, see the COPYING file which you should have received
// along with this program.

function r = is_sparse(A)
    // M2SCI function
    // Checks if A is sparse
    // Input: A = a M2SCI tlist
    // Output: -1: Unknown    0: not sparse    1: is sparse

    r = bool2s(A.vtype==Sparse | (A.vtype==Boolean & A.property==Sparse))
    if ~r & (A.vtype==Unknown | (A.vtype==Boolean & A.property==Unknown))
        r = -1
    end
endfunction

