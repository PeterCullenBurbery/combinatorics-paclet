StirlingPermutations // ClearAll

StirlingPermutations::usage = 
  "StirlingPermutations[n] generates all Stirling permutations of \
order n.";

StirlingPermutations[1] = {{1, 1}};
StirlingPermutations[k_Integer?IntegerQ /; ! (k < 1)] := 
 Join @@ (Function[x, 
     Flatten[Insert[x, {k, k}, #]] & /@ Range[2 k - 1]] /@ 
    StirlingPermutations[k - 1])