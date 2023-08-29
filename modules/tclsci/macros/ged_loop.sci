// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) INRIA
// Copyright (C) 2012 - 2016 - Scilab Enterprises
// Copyright (C) 2017 - Samuel GOUGEON
//
// This file is hereby licensed under the terms of the GNU GPL v2.0,
// pursuant to article 5.3.4 of the CeCILL v.2.1.
// This file was originally licensed under the terms of the CeCILL v2.1,
// and continues to be available under such terms.
// For more information, see the COPYING file which you should have received
// along with this program.

function h = ged_loop(a,pt)
    // Internal private function called by ged_getobject()
    // a: handle of the object to scan.
    // pt: position of the mouse pointer, in pixels from the top-left
    //
    // ged_loop() scans all existing graphic objects in the given Axes/object,
    //  and try to find one of them with its handle in the pointer vicinity.
    //  If an object is found, its handle h is returned.

    h=[]
    minDist    = 0.01 ;
    minPixDist = 3    ;

    for ka = 1:size(a,"*")    // size>1 for compounds
        ck=a(ka) ;
        select ck.type

        case "Polyline"
            x = ck.data(:,1)
            y = ck.data(:,2)
            [xn, yn] = ged_get_normalized_axes_xy(x,y)
            d = Dist2polyline(xn, yn, pts)
            if d < minDist then
                h = ck
                return
            end
            h = ged_loop(ck.datatips,pt)
            if h<>[] then
                return
            end

        case "Rectangle"
            xy = ck.data;
            [x0, y0, w, h] = (xy(1), xy(2), xy(3), xy(4))
            x = [x0  x0+w  x0+w  x0  x0]
            y = [y0   y0   y0-h y0-h y0]
            [xn, yn] = ged_get_normalized_axes_xy(x,y)
            d = Dist2polyline(xn, yn, pts)
            if d < minDist then
                h = ck
                return
            end

         case "Arc"
            // The area of detection is not the whole enclosing rectangle, but
            // only the given arc.
            xy = ck.data;
            [x, y, w, h, a0, da] = (xy(1), xy(2), xy(3), xy(4), xy(5)/64, xy(6)/64)
            pax = ck.parent
            xc = x + w/2
            yc = y - h/2
            A = linspace(a0, a0+da, max(ceil(da),3))
            x = xc + w/2*cos(A)
            y = yc + h/2*sin(A)
            [xn, yn] = ged_get_normalized_axes_xy(x,y)
            d = Dist2polyline(xn, yn, pts)
            if d < 2*minDist then
                h = ck
                return
            end

        case "Segs"
            xy = ck.data;
            xv = matrix(xy(:,1), 2, -1).'
            yv = matrix(xy(:,2), 2, -1).'
            [xn, yn] = ged_get_normalized_axes_xy(xv, yv)
            for ks = 1:size(xn,1)
                d = Dist2polyline(xn(ks,:).', yn(ks,:).', pts)
                if d < minDist then h = ck, return, end
            end

        case "Compound"
            h = ged_loop(ck.children,pt)
            if h<>[] then return,end

        case "Text"
            b = mystringbox(ck)
            if xp0>=b(1) & xp0<=b(2) & yp0>=b(3) & yp0<=b(4)
                h = ck
                return
            end

        case "Label"
            b = mystringbox(ck)
            if xp0>=b(1) & xp0<=b(2) & yp0>=b(3) & yp0<=b(4)
                h = ck
                return
            end

        case "Legend"
            // Is the click for the legend box?
            // Whatever is the filling mode of the block, we consider that no
            //  external element on the legend background can be moved.
            // BTW, the legend content of the box is frozen and can't either
            // be moved inside it. So, the click is for the legend block as a
            // whole if it is within the legend frame:
            b = ged_legend_box_in_data_units(ck)
            if (xp0>=b(1) & xp0<=b(2)) & (yp0>=b(3) & yp0<=b(4))
                h = ck
                return
            end

        case "Datatip"
            // Only boxes of detached datatips can be moved
            // Reversed and log axes supported
            p = ck.detached_position
            if p~=[]
                b = mystringbox(ck)
                if (xp0>=b(1) & xp0<=b(2)) & (yp0>=b(3) & yp0<=b(4))
                    h = ck
                    return
                end
            end

        case "Axes"
            //sca(ck);
            [xp0, yp0] = xchange(pt(1),pt(2),"i2f")
            xp = xp0
            yp = yp0
            if ck.zoom_box==[]
                db = ck.data_bounds;
            else
                db = ck.zoom_box([1 3 2 4])
            end
            if ck.tag=="legends"
                // micro-axes generated by legends()
                // The frame is this polygon:
                p = ck.children.children($).data
                xmin = p(1,1), xmax = p(2,1)
                ymin = p(4,2), ymax = p(1,2)
                if xp>=xmin & xp<=xmax & yp>=ymin & yp<=ymax
                    h = ck  // We return the whole axes to move it as a whole
                    return
                end
            else
                Xlog = part(ck.log_flags,1)=="l"
                if Xlog
                    xp = log10(xp)
                    db(1:2) = log10(db(1:2))
                end
                Ylog = part(ck.log_flags,2)=="l"
                if Ylog
                    yp = log10(yp)
                    db(3:4) = log10(db(3:4))
                end
                [Xmin, Xmax, Ymin, Ymax] = (db(1), db(2), db(3), db(4))
                Dx = Xmax - Xmin
                Dy = Ymax - Ymin
                Xreversed = ck.axes_reverse(1)=="on"
                if ~Xreversed
                    dx = xp - Xmin
                else
                    dx = Xmax - xp
                end
                Yreversed = ck.axes_reverse(2)=="on"
                if ~Yreversed
                    dy = yp - Ymin
                else
                    dy = Ymax - yp
                end
                pts = [dx/Dx dy/Dy]
                d = Dist2polyline([0,1,1,0,0],[0,0,1,1,0],pts)
                if d < minDist then
                    h = ck
                    return
                end
                // Restoring linear xp,yp (for recursive calls)
                xp = xp0, yp = yp0
                if length(a.children)>0
                    h = ged_loop([ck.children(:);ck.x_label;ck.y_label;ck.z_label;ck.title],pt)
                    if h<>[] then
                        return
                    end
                end
            end

        case "uicontrol"
            tmp = gcf();
            wh = tmp.axes_size;   // width, height
            xy = ck.position
            // ck.units == {pixels} | points | normalized
            if ck.units=="normalized"   // => converts into pixels:
                xy([1 3]) = xy([1 3])*wh(1);
                xy([2 4]) = xy([2 4])*wh(2);
            else
                // "points" case: to be implemented
            end
            [x0, y0, w, h] = (xy(1), wh(2)-xy(2)-xy(4), xy(3), xy(4))
            // y0: position of the top-left corner of the uicontrol, wrt to the
            //     top-left corner of the figure
            // [xn, yn] = ged_get_normalized_axes_xy(x,y)
            dd = minDist * sqrt(sum(wh.^2));
            if pt(1)>x0-dd & pt(1)<(x0+w+dd) & pt(2)>y0-dd & pt(2)<y0+h+dd
                h = ck
                return
            end
            // RECURSIVE CALLS TO BE IMPLEMENTED (into tabs and frames)
            // The origin is on the top left corner no longer of the figure
            // but of the parent frame, as well for xchange()
            // => code to be overhauled
            // (As well, axes in frames are not zoomable not pannable)
            //if ck.style=="frame"
            //    // It may have axes:
            //    h = ged_loop(ck.children(:), pt)
            //    if h<>[] then
            //        return
            //    end
            //end
        end
    end
endfunction
function b = mystringbox(e)
    // Internal private function for ged_loop()
    // Works in lin & log scales, but only for angle = 0
    // e: handle of type "Text" or "Label" or "Datatip"
    a = gca();
    db = a.data_bounds;
    ang = 0;
    if or(e.type==["Text" "Label"]) then
        ang = e.font_angle;
    end
    ud = e.user_data
    if typeof(ud)~="st" | ~isfield(ud,"pixbox") | ..
        ud.text ~= e.text | or(ud.params ~= [ang e.font_style e.font_size]) then
        drawlater   // to avoid flashing
        old_flags = a.log_flags;
        a.log_flags = "nnn";
        b = stringbox(e.text, db(1), db(3), ang, e.font_style, e.font_size);
        [xpix, ypix] = xchange(b(1,:), b(2,:), "f2i");
        a.log_flags = old_flags;
        drawnow
        xpix = xpix - xpix(1);
        ypix = ypix - ypix(1);
        e.userdata.pixbox = [xpix ; ypix];
        e.userdata.params = [ang e.font_style e.font_size];  // hash
        e.userdata.text = e.text;                            // hash
    else
        tmp =  e.userdata.pixbox;
        xpix = tmp(1,:);
        ypix = tmp(2,:);
    end
    // Position of the pivot (default = bottom left)
    if e.type=="Text"
        pos = e.data;
    elseif e.type=="Label"
        pos = e.position
    else    // Detached datatip
        pos = e.detached_position
    end
    [xp0, yp0] = xchange(pos(1), pos(2), "f2i");
    if ~Xlog & ~Ylog & ..           // centered xstring() bugged in log modes
       e.type=="Text" & e.text_box_mode=="centered" & and(e.text_box==[0 0])
        xpix = xpix - strange(xpix)/2
        ypix = ypix - strange(ypix)/2
    end
    [xbox, ybox] = xchange(xp0 + xpix, yp0 + ypix, "i2f");
    b = [ min(xbox) max(xbox) min(ybox) max(ybox) ];
endfunction
// function r=is_in_text(h,xy)
//    if h.Type == "Text" & h.text_box_mode=="filled" then
//        r=(xy(1)>h.data(1)&xy(1)<h.data(1)+h.text_box(1))&(xy(2)>h.data(2)&xy(2)<h.data(2)+h.text_box(2))
//    else
//        r = stringbox(h);
//        r=[r r(:,1)];
//        r=and([xy(2) -xy(1)]*diff(r,1,2)+(r(1,1:$-1).*r(2,2:$)-r(1,2:$).*r(2,1:$-1))<0)
//    end
//endfunction

function [xn,yn] = ged_get_normalized_axes_xy(x,y)
    // Internal private function for ged_loop()
    if Xlog
        k = find(x<=0)
        x(k) = 1e-308
        x = log10(x)
    end
    if Ylog
        k = find(y<=0)
        y(k) = 1e-308
        y = log10(y)
    end
    if ~Xreversed
        xn = (x - Xmin)/Dx
    else
        xn = (Xmax - x)/Dx
    end
    if ~Yreversed
        yn = (y - Ymin)/Dy
    else
        yn = (Ymax - y)/Dy
    end
endfunction

function rect = ged_legend_box_in_data_units(idLeg)
    // Internal private function for ged_loop()
    // Returns rect = [xmin xmax ymin ymax] of the legend box.
    // * reversed and log axes are implemented
    // * axes.tight_limits="off" may slightly disturb results (no workaround)
    // * The box size is set only according to the text box of legends.
    // legend.position are the coordinates of the top-left corner of the
    //  legend box, in gca().axes_bounds normalized units
    ax = idLeg.parent
    db = ax.data_bounds

    // Getting the relative width and height of the block of text in linear scales
    if typeof(idLeg.userdata)~="st" | ~isfield(idLeg.userdata,"relwidth") | ..
        idLeg.userdata.text ~= idLeg.text then
        drawlater
        old_flags = ax.log_flags;
        ax.log_flags = "nnn";
        b = xstringl(db(1), db(3), idLeg.text, idLeg.font_style, idLeg.font_size);
        ax.log_flags = old_flags
        drawnow
        relwidth  = b(3)/(db(2)-db(1))
        relheight = b(4)/(db(4)-db(3))
        idLeg.userdata.relwidth = relwidth
        idLeg.userdata.relheight = relheight
        idLeg.userdata.text = idLeg.text
    else
        relwidth = idLeg.userdata.relwidth
        relheight = idLeg.userdata.relheight
    end
    // x position:
    xlog = part(ax.log_flags,1)=="l"
    if xlog
        db(1:2) = log10(db(1:2))
    end
    tmp = (idLeg.position(1) - ax.margins(1)) / (1-sum(ax.margins(1:2)))* ..
            (db(2)-db(1))
    if ax.axes_reverse(1)=="off"
        x0 = db(1) + tmp
    else
        x0 = db(2) - tmp
    end

        // y position:
    ylog = part(ax.log_flags,2)=="l"
    if ylog
        db(3:4) = log10(db(3:4))
    end
    tmp = (idLeg.position(2) - ax.margins(3)) / (1-sum(ax.margins(3:4)))* ..
            (db(4)-db(3))
    if ax.axes_reverse(2)=="off"
        y0 = db(4) - tmp
    else
        y0 = db(3) + tmp
    end

    // For the time being, the legend block is considered to be
    // as tall and as wide as the text block only
    x1 = x0 + (1 - 2*(ax.axes_reverse(1)=="on")) * relwidth * (db(2)-db(1));
    y1 = y0 - (1 - 2*(ax.axes_reverse(2)=="on")) * relheight * (db(4)-db(3));
    x = [x0 x1];
    y = [y0 y1];
    if xlog, x = 10.^x; end
    if ylog, y = 10.^y; end
    rect = [min(x) max(x) min(y) max(y)];
endfunction