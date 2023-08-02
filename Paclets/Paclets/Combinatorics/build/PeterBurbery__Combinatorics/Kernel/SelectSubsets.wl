(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`Combinatorics`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`Combinatorics`SelectSubsets;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


ClearAll[SelectSubsets,expandn,iSelectSubsets]
SelectSubsets::usage="SelectSubsets[list, crit] gives a list of all possible subsets of list that satisfy the criterion crit.\nSelectSubsets[list, n, crit] gives all subsets containing at most n elements that satisfy crit.\nSelectSubsets[list, {n}, crit] gives all subsets containing exactly n elements that satisfy crit.\nSelectSubsets[list, {nmin, nmax}, crit] gives all subsets containing between nmin and nmax elements that satisfy crit.\nSelectSubsets[list, nspec, crit, s] limits the results to the first s subsets.";

iSelectSubsets[list_List,n_List,crit_,m_:\[Infinity]]:=Module[{vars,its,len=Length[list],begin,end,val,found=0,result,broken=False},
result=Reap[
Table[
If[!broken,
Which[numvar>0,
vars=Table[Unique["i"],numvar];
begin=Prepend[Most[vars]+1,1];
end=Range[len-numvar+1,len];
its=Transpose[{vars,begin,end}];

Do[
val=Part[list,vars];
If[TrueQ[crit[val]],
found++;
If[found>m,broken=True;Break[]];
Sow[val];
]
,
Evaluate[Sequence@@its]
]
,
numvar==0,
val={};
If[TrueQ[crit[val]],
found++;
If[found>m,broken=True;Break[]];
Sow[val];
]
]
]
,
{numvar,n}
];
];
First[result[[2]],{}]
]
expandn[list_,All]:=expandn[list,Length[list]]
expandn[list_,n_Integer?NonNegative]:=Range[0,n]
expandn[list_,{n_Integer?NonNegative}]:={n}
expandn[list_,{nmin_Integer?NonNegative,nmax_Integer?NonNegative}]:=Range[nmin,nmax]
expandn[list_,{nmin_Integer?NonNegative,nmax_Integer?NonNegative,dn_Integer}]:=Range[nmin,nmax,dn]
SelectSubsets[list_List,crit_]:=iSelectSubsets[list,expandn[list,All],crit]
SelectSubsets[list_List,n_,crit_]:=iSelectSubsets[list,expandn[list,n],crit]
SelectSubsets[list_List,n_,crit_,m_:\[Infinity]]:=iSelectSubsets[list,expandn[list,n],crit,m]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
