// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) DIGITEO - 2012 - Cedric Delamarre
//
// Copyright (C) 2012 - 2016 - Scilab Enterprises
//
// This file is hereby licensed under the terms of the GNU GPL v2.0,
// pursuant to article 5.3.4 of the CeCILL v.2.1.
// This file was originally licensed under the terms of the CeCILL v2.1,
// and continues to be available under such terms.
// For more information, see the COPYING file which you should have received
// along with this program.

function x = %i_k_i(a, b)

    t1=inttype(a); t2=inttype(b);
    //logical promotions
    if t1<10 & t2<10 then t=max(t1,t2); end
    if t1>10 & t2>10 then t=max(t1,t2); end
    //more arbitrary promotions
    if t1<10 & t2>10 then t=max(t1,t2-10); end
    if t1>10 & t2<10 then t=max(t1-10,t2); end

    x = iconvert(double(a) .*. double(b), t);

endfunction
