// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) ????-2008 - INRIA
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

m = 200;
n = 400;
mi = 30;
ni = 40;

A = sprand(n,m,0.1) + %i*sprand(n,m,0.1);
B = sprand(mi,ni,0.7) +%i*sprand(mi,ni,0.7);

ii = ["grand(mi,1,""uin"",1,m)";
      "-gsort(-grand(mi,1,""uin"",1,m))";
      "1:mi";
      "m:-1:(m-mi+1)";
      "m-5:m+mi-6"];
jj = ["grand(ni,1,""uin"",1,n)";
      "-gsort(-grand(ni,1,""uin"",1,n))";
      "1:ni";
      "n:-1:(n-ni+1)";
      "n-2:n+ni-3"];


switchA = ["real(A)" "A"];
switchB = ["real(B)" "B"];

for i=1:5
   indi = evstr(ii(i));
   for j=1:5
      indj = evstr(jj(j));
      for k=1:2
	 for l=1:2
	    AA = evstr(switchA(k));
	    Af = full(AA);
	    D = evstr(switchB(l));
            Df = full(D);
	    AA(indi,indj) = D;
	    Af(indi,indj) = Df;
	    if max(abs(Af - full(AA))) > 0 then
	       mprintf('\n\r test (%d,%d,%d,%d) fails',i,j,k,l)
	    end
	 end
      end
   end
end
