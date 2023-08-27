// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2010 - DIGITEO - Michael Baudin
// Copyright (C) 2011 - DIGITEO - Michael Baudin
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->
// <-- NO CHECK REF -->
// <-- ENGLISH IMPOSED -->

// Run with test_run('statistics','cdfgam',['no_check_error_output']);

//
// Assessing the quality of the Normal distribution function
// References
//   Yalta, A. T. 2008. The accuracy of statistical distributions in Microsoft®Excel 2007. Comput. Stat. Data Anal. 52, 10 (Jun. 2008), 4579-4586. DOI= http://dx.doi.org/10.1016/j.csda.2008.03.005
//   Computation of Statistical Distributions (ELV), Leo Knüsel
// Table 5
// Check Gamma distribution with parameters (x, alpha, beta = 1, Sigma = 1)
//


// Table of inputs from Yalta, 2008
// [x shape scale P ]
table = [
0.1 , 0.1 , 1 , 0.827552
0.2 , 0.1 , 1 , 0.879420
0.2 , 0.2 , 1 , 0.764435
0.3 , 0.2 , 1 , 0.816527
0.3 , 0.3 , 1 , 0.726957
0.4 , 0.3 , 1 , 0.776381
0.4 , 0.4 , 1 , 0.701441
0.5 , 0.4 , 1 , 0.748019
0.5 , 0.5 , 1 , 0.682689
0.6 , 0.5 , 1 , 0.726678
];

precision = 1.e-5;
ntests = size(table,"r");
for i = 1 : ntests
    x = table(i,1);
    shape = table(i,2);
    scale = table(i,3);
    expected = table(i,4);
    // Caution: this is the rate !
    rate = 1/scale;
    [computed,Q]=cdfgam("PQ",x,shape,rate);
    assert_checkalmostequal ( computed , expected , precision );
    assert_checkalmostequal ( Q , 1 - expected , precision );
end

// Table of inputs computed from R-2.8.1
// [x shape scale PDF-P CDF-P CDF-Q]
table = [
1.000000000000000056D-01 1.000000000000000056D-01 1.000000000000000000D+00 7.554920138253073958D-01 8.275517595858505882D-01 1.724482404141494951D-01
2.000000000000000111D-01 1.000000000000000056D-01 1.000000000000000000D+00 3.663307993056703071D-01 8.794196267900568076D-01 1.205803732099432063D-01
2.000000000000000111D-01 2.000000000000000111D-01 1.000000000000000000D+00 6.462857778271943188D-01 7.644345975029189777D-01 2.355654024970809945D-01
2.999999999999999889D-01 2.000000000000000111D-01 1.000000000000000000D+00 4.227875047602157044D-01 8.165267943336527168D-01 1.834732056663473110D-01
2.999999999999999889D-01 2.999999999999999889D-01 1.000000000000000000D+00 5.752117576599179438D-01 7.269573437103662439D-01 2.730426562896338116D-01
4.000000000000000222D-01 2.999999999999999889D-01 1.000000000000000000D+00 4.255407854753925911D-01 7.763805810166358734D-01 2.236194189833642099D-01
4.000000000000000222D-01 4.000000000000000222D-01 1.000000000000000000D+00 5.236648604477927016D-01 7.014412706419403953D-01 2.985587293580597157D-01
5.000000000000000000D-01 4.000000000000000222D-01 1.000000000000000000D+00 4.144555659263016167D-01 7.480185547260104206D-01 2.519814452739895239D-01
5.000000000000000000D-01 5.000000000000000000D-01 1.000000000000000000D+00 4.839414490382866751D-01 6.826894921370858516D-01 3.173105078629140929D-01
5.999999999999999778D-01 5.000000000000000000D-01 1.000000000000000000D+00 3.997355278034666060D-01 7.266783217077018575D-01 2.733216782922981980D-01
5.000000000000000000D-01 5.000000000000000000D-01 2.000000000000000000D+00 4.393912894677223790D-01 5.204998778130465187D-01 4.795001221869534258D-01
5.000000000000000000D-01 5.000000000000000000D-01 3.000000000000000000D+00 3.899393114454822729D-01 4.362971383492270094D-01 5.637028616507729906D-01
5.000000000000000000D-01 5.000000000000000000D-01 4.000000000000000000D+00 3.520653267642995243D-01 3.829249225480261809D-01 6.170750774519737636D-01
1.000000000000000000D+00 5.000000000000000000D-01 1.000000000000000000D+00 2.075537487102973866D-01 8.427007929497148941D-01 1.572992070502851891D-01
2.000000000000000000D+00 5.000000000000000000D-01 1.000000000000000000D+00 5.399096651318804896D-02 9.544997361036415828D-01 4.550026389635838248D-02
4.000000000000000000D+00 5.000000000000000000D-01 1.000000000000000000D+00 5.166746338523012412D-03 9.953222650189527121D-01 4.677734981047261889D-03
1.000000000000000000D+01 5.000000000000000000D-01 1.000000000000000000D+00 8.099910956089122777D-06 9.999922557835689840D-01 7.744216431044085842D-06
2.000000000000000000D+01 5.000000000000000000D-01 1.000000000000000000D+00 2.600281868827196957D-10 9.999999997460371493D-01 2.539628589470869077D-10
4.000000000000000000D+01 5.000000000000000000D-01 1.000000000000000000D+00 3.789795640412981196D-19 1.000000000000000000D+00 3.744097384202895045D-19
3.000000000000000000D+02 5.000000000000000000D-01 1.000000000000000000D+00 1.67694904029982009D-132 1.000000000000000000D+00 1.67416798469182012D-132
1.000000000000000021D-02 5.000000000000000000D-01 1.000000000000000000D+00 5.585758033944684620D+00 1.124629160182848975D-01 8.875370839817151580D-01
1.000000000000000048D-04 5.000000000000000000D-01 1.000000000000000000D+00 5.641331674102550409D+01 1.128341555584961957D-02 9.887165844441503371D-01
1.000000000000000021D-08 5.000000000000000000D-01 1.000000000000000000D+00 5.641895779058606422D+03 1.128379163334249004D-04 9.998871620836665697D-01
9.999999999999999452D-21 5.000000000000000000D-01 1.000000000000000000D+00 5.641895835477570534D+09 1.128379167095512970D-10 9.999999998871620388D-01
9.999999999999999293D-41 5.000000000000000000D-01 1.000000000000000000D+00 5.641895835477568717D+19 1.128379167095512972D-20 1.000000000000000000D+00
1.00000000000000002D-100 5.000000000000000000D-01 1.000000000000000000D+00 5.641895835477541988D+49 1.128379167095513082D-50 1.000000000000000000D+00
9.99999999999999982D-201 5.000000000000000000D-01 1.000000000000000000D+00 5.641895835477511468D+99 1.12837916709551300D-100 1.000000000000000000D+00
];

// Some tests do not pass:
// http://bugzilla.scilab.org/8030
//
// Prints the number of accurate digits.

precision = 1.e-12;
precinverse = 1.e-14;

ntests = size(table,"r");
for i = 1 : ntests
    x = table(i,1);
    shape = table(i,2);
    scale = table(i,3);
    p = table(i,5);
    q = table(i,6);
    // Caution: this is the rate !
    rate = 1/scale;
    [p1,q1] = cdfgam("PQ",x,shape,rate);
    x1      = cdfgam("X",shape,rate,p,q);
    shape1  = cdfgam("Shape",rate,p,q,x);
    rate1   = cdfgam("Rate",p,q,x,shape);
    if ( %t ) then
        assert_checkalmostequal ( p1 , p , precision );
        assert_checkalmostequal ( q1 , q , precision );
        assert_checkalmostequal ( x1 , x , precision );
        assert_checkalmostequal ( shape1 , shape , precinverse );
        assert_checkalmostequal ( rate1 , rate , precinverse );
    end
    if ( %f ) then
        dp = assert_computedigits ( p1 , p );
        dq = assert_computedigits ( q1 , q );
        dx = assert_computedigits ( x1 , x );
        ds = assert_computedigits ( shape1 , shape );
        dr = assert_computedigits ( rate1 , rate );
        mprintf("Test #%3d/%3d: Digits p1= %.1f, q1=%.1f, X= %.1f, S= %.1f, R= %.1f\n",i,ntests,dp,dq,dx,ds,dr);
    end
end

// IEEE support
// See http://bugzilla.scilab.org/7296
Shape = 0;
Rate = 1;

X = %inf; // Inf
[P, Q] = cdfgam("PQ", X, Shape, Rate);
assert_checkequal(P, 1);
assert_checkequal(Q, 0);

X = %nan; // NaN
[P, Q] = cdfgam("PQ", X, Shape, Rate);
assert_checkequal(P, %nan);
assert_checkequal(Q, %nan);
