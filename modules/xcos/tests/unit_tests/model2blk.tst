// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) Scilab Enterprises - 2012 - Clément DAVID
//
// This file is distributed under the same license as the Scilab package.

// <-- CLI SHELL MODE -->
//
// <-- Short Description -->
// White-box test for the model2blk.

loadScicos(); loadXcosLibs();


blk = PROD_f('define');
model = blk.model;

function model = config_size(model, sz)
    model.in = [sz; sz];
    model.out = sz
endfunction

sz = 4;
model = config_size(model, sz);

blk = model2blk(model); // funpt is a double ???
for i=1:10,
    callblk(blk, 4, 0);     // crash on callf as funpt is invalid
end

