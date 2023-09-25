//
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) ????-2008 - INRIA
// Copyright (C) 2009 - DIGITEO - Vincent COUVERT
//
// This file is released under the 3-clause BSD license. See COPYING-BSD.

// Callback functions
function act_color_in_list(flag)
    listbox_handle = get("colors_listbox");
    new_color = get(get("colors_edit"), "String");

    if new_color==gettext("<Enter color name here>") | isempty(new_color) then
        messagebox(gettext("Please enter a color name first."), gettext("Error"), "error", "modal");
        return
    end
    colors = get(listbox_handle, "String");
    if (flag==1) then
        colors = [colors  new_color];
    else
        f = find(colors<>new_color);
        if size(f, "*") == size(colors, "*") then
            messagebox(gettext("Unknown color."), gettext("Error"), "error", "modal");
            return
        end
        colors = colors(f);
    end
    set(listbox_handle, "String", strcat(colors,"|"));
endfunction

function act_selected_colors(flag)
    listbox_handle = get("colors_listbox");
    colors = get(listbox_handle, "String");
    indices = get(listbox_handle, "Value");

    if isempty(indices) then
        msg = gettext("No color selected.");
        messagebox(msg, gettext("Color selection"), "info", "modal");
        return
    end
    if (flag==1) then
        msg = msprintf(gettext("Selected colors are: %s."), strcat(colors(indices), ", "));
    else
        msg = msprintf(gettext("Deleted colors are: %s."), strcat(colors(indices), ", "));
        s = size(colors, "*");
        colors = colors(setdiff(1:s,indices));
        set(listbox_handle, "String", strcat(colors,"|"));
    end
    messagebox(msg, gettext("Color selection"), "info", "modal");
endfunction

function menu_callback()
    msg = msprintf(gettext("You clicked on menu ''%s''."), get(gcbo, "Label"));
    messagebox(msg, gettext("Selected menu"), "info", "modal");
endfunction

function checked_menu_callback()
    if get(gcbo, "Checked")=="on" then
        state = gettext("checked");
    else
        state = gettext("unchecked");
    end
    msg = msprintf(gettext("Menu ''%s'' is %s."), get(gcbo, "Label"), state);
    messagebox(msg, gettext("Menu status"), "info", "modal");
endfunction

function slider_update()
    sl = get("demo_slider");
    txt = get("slider_text");
    set(txt, "String", gettext("Slider value: ") + string(get(sl, "Value")));
endfunction

function popupmenu_callback()
    pop = get("popupmenu_demo");
    items = get(pop, "String");
    selected = get(pop, "Value");

    msg = msprintf(gettext("You selected ''%s''."), items(selected));
    messagebox(msg, gettext("Popupmenu selection"), "info", "modal");
endfunction

function close_uicontrols_demo()
    delete(get("uicontrols_demo_figure"));
endfunction

function reset_uicontrols_demo()
    findChildren = get("popupmenu_demo");
    findChildren.value = [];
    findChildren = get("demo_slider");
    findChildren.value = 50;
    slider_update();
    findChildren = get("colors_edit");
    findChildren.string = gettext("<Enter color name here>");
    findChildren = get("colors_listbox");
    findChildren.string = tokens(initial_colors,"|")';
endfunction


function exit_scilab()
    msg = gettext("Do you really want to quit Scilab?");
    answ = messagebox(msg, gettext("Quit Scilab"), "question", [gettext("Yes") gettext("No")], "modal");
    if answ==1 then
        exit;
    end
endfunction

if get("uicontrols_demo_figure") <> [] then
    f = get("uicontrols_demo_figure");
    delete(f.children);
else
    close(100002)
    // Create a figure
    f = figure("figure_name", gettext("Uicontrols demo"),...
    "figure_id", 100002, ...
    "infobar_visible", "off",...
    "toolbar_visible", "off",...
    "dockable", "off",...
    "menubar", "none",...
    "default_axes", "off", ...
    "Position",[150 150 450 410],...
    "resize", "off",...
    "BackgroundColor", [0.9 0.9 0.9],...
    "Tag", "uicontrols_demo_figure");
end

// Add custom menus
appli_menu = uimenu("Parent", f, "Label", gettext("Application"));
close_menu = uimenu("Parent", appli_menu, "Label", gettext("Close figure"), "callback", "close_uicontrols_demo();");
quit_menu = uimenu("Parent", appli_menu, "Label", gettext("Quit Scilab"), "callback", "exit_scilab();");

graphics_menu = uimenu("Parent", f, "Label", gettext("Scilab Graphics"));
plot3d_menu = uimenu("Parent", graphics_menu, "Label", gettext("Launch plot3d"), "callback", "plot3d();");
plot2d_menu = uimenu("Parent", graphics_menu, "Label", gettext("Launch plot2d"), "callback", "plot2d();");

menu = uimenu("Parent", f, "Label", gettext("Menu"));
submenu1 = uimenu("Parent", menu, "Label", gettext("Sub-menu 1"), "Callback", "menu_callback()");
submenu2 = uimenu("Parent", menu, "Label", gettext("Sub-menu 2"), "Callback", "menu_callback()");
submenu21 = uimenu("Parent", submenu2, "Label", gettext("Sub-menu 2-1"), "Callback", "menu_callback()");
submenu22 = uimenu("Parent", submenu2, "Label", gettext("Sub-menu 2-2"), "Callback", "menu_callback()");
submenu3 = uimenu("Parent", menu, "Label", gettext("Sub-menu 2"), "Checked", "on", "Callback", "checked_menu_callback()");

demo_viewCode("uicontrol.dem.sce");

// A popup menu
popup_demo = uicontrol(f, "Position", [15 330 240 20],...
"Style", "popupmenu",...
"String", gettext("item1|item2|item3|item4"),...
"Callback", "popupmenu_callback();",...
"Tag", "popupmenu_demo");
popup_demo_title = uicontrol(f, "Position", [16 355 80 15],...
"Style", "text",...
"FontSize", 11,...
"String", gettext("Pop-up menu"),...
"BackgroundColor", [0.9 0.9 0.9]);

// Frame containing a slider
slider_frame = uicontrol(f, "Position", [15 190 240 105], ...
"Style", "frame", ...
"Relief", "groove",...
"BackgroundColor", [0.8 0.8 0.8]);
slider_frame_title = uicontrol(f, "Position", [16 300 200 15],...
"Style", "text",...
"FontSize", 11,...
"String", gettext("Slider demo"),...
"BackgroundColor", [0.9 0.9 0.9]);

slider_text = uicontrol(f, "Position", [20 200 230 20],...
"Style", "text",...
"FontSize", 11,...
"FontWeight", "bold",...
"BackgroundColor",[1 1 1],...
"HorizontalAlignment", "center",...
"Tag", "slider_text");

theslider = uicontrol(f, "Position", [20 230 230 55],...
"Style", "slider",...
"Min", 0,...
"Max", 100,...
"Value", 50,...
"SliderStep", [2 10],...
"Tag", "demo_slider",...
"Callback", "slider_update();");
// Update the text displayed
slider_update();

// Frame with uicontrols used to edit the colors list
edit_frame = uicontrol(f, "Position", [15 45 240 110],...
"Style", "frame",...
"Relief", "groove",...
"BackgroundColor", [0.8 0.8 0.8]);
edit_frame_title = uicontrol(f, "Position", [16 160 170 15],...
"Style", "text",...
"FontSize", 11,...
"String", gettext("Colors list edition"),...
"BackgroundColor", [0.9 0.9 0.9]);

edit_edit = uicontrol(f, "Position", [20 120 230 25],...
"Style", "edit",...
"FontSize", 11,...
"String", gettext("<Enter color name here>"),...
"BackgroundColor", [1 1 1],...
"Tag", "colors_edit");

edit_button = uicontrol(f, "Position", [19 85 230 25], ...
"Style", "pushbutton",...
"FontSize", 11,...
"String", gettext("Add color in listbox"), ...
"callback", "act_color_in_list(1)");

edit_button_del = uicontrol(f, "Position", [19 55 230 25], ...
"Style", "pushbutton", ...
"FontSize", 11, ...
"String", gettext("Delete color in listbox"), ...
"callback", "act_color_in_list(2)");

// Listbox used to display color list
initial_colors = strcat([gettext("red") gettext("green") gettext("blue") gettext("yellow")], "|");

thelistbox = uicontrol(f, "Position", [270 45 165 260],...
"Style", "listbox",...
"FontSize", 11,...
"String",  initial_colors,...
"BackgroundColor", [1 1 1],...
"Max", 30,... //if Max>1 then allowed multiple selection
"Tag", "colors_listbox");

// Button used to display selected colors in a message box
disp_button = uicontrol(f, "Position", [270 345 165 25],...
"Style", "pushbutton",...
"FontSize", 11,...
"String", gettext("Display selection"),...
"callback", "act_selected_colors(1)");

// Button used to delete selected colors in a message box
disp_button = uicontrol(f, "Position", [270 315 165 25], ...
"Style", "pushbutton",...
"FontSize", 11,...
"String", gettext("Delete selection"),...
"callback", "act_selected_colors(2)");

// Reset application
quit_button = uicontrol(f, "Position", [14 15 165 25],...
"Style", "pushbutton",...
"String", gettext("Default"),...
"FontSize", 11,...
"Callback", "reset_uicontrols_demo();");

// Exit application
quit_button = uicontrol(f, "Position", [270 15 165 25],...
"Style", "pushbutton",...
"String", gettext("Quit demonstration"),...
"FontSize", 11,...
"Callback", "close_uicontrols_demo();");
