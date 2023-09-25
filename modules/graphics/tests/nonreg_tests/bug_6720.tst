// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2006-2010 - DIGITEO - pierre.lando@scilab.org
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->
// <-- NO CHECK ERROR OUTPUT -->

// <-- Non-regression test for bug 6720 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/6720
//
// <-- Short Description -->
// For 'caption' function, scilab checked that
//  "all given handles was children of the current axes"
// instead of checking that
//  "all given handles have the same parent axes".

// The script below should now work.

subplot(211);plot(1:10);h1=gce();
subplot(212);plot(1:10);h2=gce();

j1=h1.children;
j2=h2.children;

captions(j2,'two');
captions(j1,'one');

