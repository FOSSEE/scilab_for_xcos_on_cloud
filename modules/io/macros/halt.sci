// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) XXXX-2008 - INRIA
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2.1-en.txt


function []=halt(varargin)

    //halt() stops execution until something is entered in the keyboard.

    [lhs,rhs] = argn(0);

    msg = "halt";

    if (rhs > 0) then

        if rhs > 1  then
            error(msprintf(gettext("%s: Wrong number of input argument.\n"),"halt"));
        end

        if type(varargin(1)) <> 10 then
            error(msprintf(gettext("%s: Wrong type for input argument #%d: String expected.\n"),"halt",1));
        end

        if size(varargin(1),"*") <> 1 then
            error(msprintf(gettext("%s: Wrong size for input argument #%d: A string expected.\n"),"halt",1));
        end

        msg = string(varargin(1));
    end

    mprintf(msg);
    mscanf("%c");

endfunction
