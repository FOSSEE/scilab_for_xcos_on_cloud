//  Scicos
//
//  Copyright (C) INRIA - METALAU Project <scicos@inria.fr>
//
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 2 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software
// Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
//
// See the file ../license.txt
//

function [x,y,typ]=SELECT_f(job,arg1,arg2)
    x=[];
    y=[];
    typ=[];
    select job
    case "set" then
        x=arg1;
        graphics=arg1.graphics;
        exprs=graphics.exprs
        model=arg1.model;
        while %t do
            [ok,nin,z0,exprs]=scicos_getvalue(..
            msprintf(_("Set %s block parameters"), "SELECT_f"),..
            _(["Number of inputs" ; "Initial connected input"]),..
            list("vec",1,"vec",1),exprs)
            if ~ok then
                break,
            end
            if z0>nin|z0<=0 then
                message(_("The initial connected input is not a valid input port number"))
            else
                [model,graphics,ok]=check_io(model,graphics,-ones(nin,1),-1,ones(nin,1),[])
                if ok then
                    graphics.exprs=exprs;
                    model.dstate=z0-1,
                    x.graphics=graphics;
                    x.model=model
                    break
                end
            end
        end
    case "define" then
        z0=0
        in=[-1;-1]
        nin=2

        model=scicos_model()
        model.sim=list("selector",2)
        model.in=in
        model.out=-1
        model.evtin=ones(in)
        model.dstate=z0
        model.blocktype="c"
        model.dep_ut=[%t %f]

        exprs=[string(nin);string(z0+1)]
        gr_i=[]
        x=standard_define([2 2],model,exprs,gr_i)
    end
endfunction
