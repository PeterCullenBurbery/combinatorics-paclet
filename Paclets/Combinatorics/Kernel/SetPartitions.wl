KSetPartitions[0, 0] := {{}}
 
KSetPartitions[{}, 0] := {{}}
 
KSetPartitions[s_List, 0] := {}
 
KSetPartitions[s_List, k_Integer] := {} /; k > Length[s]
 
KSetPartitions[s_List, k_Integer] := {({#1} & ) /@ s} /; 
  k === Length[s]
 
KSetPartitions[s_List, k_Integer] := 
 Block[{$RecursionLimit = Infinity, j}, 
   Join[(Prepend[#1, {First[s]}] & ) /@ 
     KSetPartitions[Rest[s], k - 1], 
    Flatten[(Table[
         Prepend[Delete[#1, j], Prepend[#1[[j]], s[[1]]]], {j, 
          Length[#1]}] & ) /@ KSetPartitions[Rest[s], k], 1]]] /; 
  k > 0 && k < Length[s]
 
KSetPartitions[0, (k_Integer)?Positive] := {}
 
KSetPartitions[(n_Integer)?Positive, 0] := {}
 
KSetPartitions[(n_Integer)?Positive, (k_Integer)?Positive] := 
 KSetPartitions[Range[n], k]