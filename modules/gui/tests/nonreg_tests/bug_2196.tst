// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008 - INRIA - Vincent COUVERT
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->
//
// <-- Non-regression test for bug 2196 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=2196
//
// <-- Short Description -->
//   uicontrols lose properties when moved across figures with set(h, 'parent',newfigure), even when reset where they already belong


f1 = figure(1);
f2 = figure(2);

// --- Sliders ---
h1 = uicontrol(f1,"style","slider","position",[10 10 100 80]);

// Reset previous parent
set(h1,"parent",f1);
pos = get(h1, "position");
if pos(3) < pos(4) then pause; end

// Change parent
set(h1,"parent",f2);
pos = get(h1, "position");
if pos(3) < pos(4) then pause; end


// --- Pushbuttons ---
h2 = uicontrol(f1,"style","pushbutton","position",[10 10 100 100]);
bg = get(h2, "backgroundcolor");
relief = get(h2, "relief");

// Reset previous parent
set(h2,"parent",f1);
if or(get(h2, "backgroundcolor")<>bg) then pause; end
if or(get(h2, "relief")<>relief) then pause; end

// Change parent
set(h2,"parent",f2);
if or(get(h2, "backgroundcolor")<>bg) then pause; end
if or(get(h2, "relief")<>relief) then pause; end

// --- Edits ---
h3 = uicontrol(f1,"style","edit","position",[10 10 100 100],"string","aaaaa");
txt = get(h3, "string");

// Reset previous parent
set(h3,"parent",f1);
if or(get(h3, "string")<>txt) then pause; end

// Change parent
set(h3,"parent",f2);
if or(get(h3, "string")<>txt) then pause; end

// --- ListBoxes ---
h4 = uicontrol(f1,"style","listbox","position",[10 10 100 100],"string",["1","2","X"],"value",2);
bg = get(h4, "backgroundcolor");
val = get(h4, "value");

// Reset previous parent
set(h4,"parent",f1);
if or(get(h4, "backgroundcolor")<>bg) then pause; end
if or(get(h4, "value")<>val) then pause; end

// Change parent
set(h4,"parent",f2);
if or(get(h4, "backgroundcolor")<>bg) then pause; end
if or(get(h4, "value")<>val) then pause; end

