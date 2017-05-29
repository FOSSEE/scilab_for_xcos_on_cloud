// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2011 - DIGITEO - Vincent COUVERT
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- CLI SHELL MODE -->
//
// <-- Non-regression test for bug 8783 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=8783
//
// <-- Short Description -->
// loadmatfile could not load hypermatrices of integer types.

loadmatfile(SCI + "/modules/matio/tests/nonreg_tests/bug_8783.mat")

int8hmref(:,:,1) = [
    127  127  127  127;
    127  127  127  127;
    127   98  127  127];
int8hmref(:,:,2) = [
    127  127  127   36;
    127  127  127  127
    127  127  127  127];
int8hmref(:,:,3) = [
    127  127  127   46;
    127  127   32   97;
    127  127  127  127];
int8hmref(:,:,4) = [
    127   34  127  127;
    127  127  127  127;
    127  127  127  127];
int8hmref(:,:,5) = [
    127  127  119  127;
    127  127  127  127;
    127  127  127  127];

if or(int8hm<>int8hmref) then pause; end

int16hmref(:,:,1) = [
    815    913    278    965;
    906    632    547    158;
    127     98    958    971];
int16hmref(:,:,2) = [
    957    142    792     36;
    485    422    959    849;
    800    916    656    934];
int16hmref(:,:,3) = [
    679    392    706     46;
    758    655     32     97;
    743    171    277    823];
int16hmref(:,:,4) = [
    695     34    766    490;
    317    439    795    446;
    950    382    187    646];
int16hmref(:,:,5) = [
    709    680    119    340;
    755    655    498    585;
    276    163    960    224];

if or(int16hm<>int16hmref) then pause; end

int32hmref(:,:,1) = [
    815         913         278         965;
    906         632         547         158;
    127          98         958         971];
int32hmref(:,:,2) = [
    957         142         792          36;
    485         422         959         849;
    800         916         656         934];
int32hmref(:,:,3) = [
    679         392         706          46;
    758         655          32          97;
    743         171         277         823];
int32hmref(:,:,4) = [
    695          34         766         490;
    317         439         795         446;
    950         382         187         646];
int32hmref(:,:,5) = [
    709         680         119         340;
    755         655         498         585;
    276         163         960         224];

if or(int32hm<>int32hmref) then pause; end

uint8hmref(:,:,1) = [
    255  255  255  255;
    255  255  255  158;
    127   98  255  255];
uint8hmref(:,:,2) = [
    255  142  255   36;
    255  255  255  255;
    255  255  255  255];
uint8hmref(:,:,3) = [
    255  255  255   46;
    255  255   32   97;
    255  171  255  255];
uint8hmref(:,:,4) = [
    255   34  255  255;
    255  255  255  255;
    255  255  187  255];
uint8hmref(:,:,5) = [
    255  255  119  255;
    255  255  255  255;
    255  163  255  224];

if or(uint8hm<>uint8hmref) then pause; end

uint16hmref(:,:,1) = [
    815    913    278    965;
    906    632    547    158;
    127     98    958    971];
uint16hmref(:,:,2) = [
    957    142    792     36;
    485    422    959    849;
    800    916    656    934];
uint16hmref(:,:,3) = [
    679    392    706     46;
    758    655     32     97;
    743    171    277    823];
uint16hmref(:,:,4) = [
    695     34    766    490;
    317    439    795    446;
    950    382    187    646];
uint16hmref(:,:,5) = [
    709    680    119    340;
    755    655    498    585;
    276    163    960    224];

if or(uint16hm<>uint16hmref) then pause; end

uint32hmref(:,:,1) = [
    815         913         278         965;
    906         632         547         158;
    127          98         958         971];
uint32hmref(:,:,2) = [
    957         142         792          36;
    485         422         959         849;
    800         916         656         934];
uint32hmref(:,:,3) = [
    679         392         706          46;
    758         655          32          97;
    743         171         277         823];
uint32hmref(:,:,4) = [
    695          34         766         490;
    317         439         795         446;
    950         382         187         646];
uint32hmref(:,:,5) = [
    709         680         119         340;
    755         655         498         585;
    276         163         960         224];

if or(uint32hm<>uint32hmref) then pause; end
