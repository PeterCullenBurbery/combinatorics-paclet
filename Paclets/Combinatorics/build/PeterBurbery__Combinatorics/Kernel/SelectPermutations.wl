(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`Combinatorics`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`Combinatorics`SelectPermutations;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


ClearAll[iSelectPermutations,SelectPermutations]

SelectPermutations::usage="SelectPermutations[list, crit] generates a list of all possible permutations of the elements in list satisfying crit.\nSelectPermutations[list, n, crit] gives all permutations containing at most n elements satisfying crit.\nSelectPermutations[list, {n}, crit] gives all permutations containing exactly n elements satisfying crit.\nSelectPermutations[\[Ellipsis], crit, m] gives at most m results.";

iSelectPermutations[list_,nlist_List,crit_,m_:\[Infinity]]:=Module[{vars,its,len=Length[list],begin,end,val,found=0,result,broken=False,rules,minindex},
result=Reap[
Do[
If[!broken,
Which[numvar>0,
vars=Table[Unique["i"],numvar];
begin=ConstantArray[1,Length[vars]];
end=ConstantArray[len,Length[vars]];
its=Transpose[{vars,begin,end}];

minindex=GatherBy[Transpose[{List@@list,Range[Length[list]]}],First];
minindex={#[[1,1]],#[[All,2]]}&/@minindex;
minindex=Association[Rule@@@minindex];

If[DuplicateFreeQ[list], (* optimize for lists that are duplicate-free *)
Do[
If[Unequal@@vars,
val=Part[list,vars];
If[TrueQ[crit[val]],
found++;
If[found>m,broken=True;Break[]];
Sow[val];
]
]
,
Evaluate[Sequence@@its]
]
,
Do[
If[Unequal@@vars,
val=Part[list,vars];
rules=Transpose[{vars,List@@val}];
rules=GatherBy[rules,Last];
rules={#[[1,2]],#[[All,1]]}&/@rules;
rules=(Take[minindex[#1],UpTo[Length[#2]]]===#2)&@@@rules;
rules=And@@rules;
If[rules,
If[TrueQ[crit[val]],
found++;
If[found>m,broken=True;Break[]];
Sow[val];
]
]
]
,
Evaluate[Sequence@@its]
]
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
{numvar,nlist}
]
];
First[result[[2]],{}]
]
SelectPermutations[list:_[___],crit_]:=iSelectPermutations[list,{Length[list]},crit]
SelectPermutations[list:_[___],n_Integer?NonNegative,crit_,m_:\[Infinity]]:=iSelectPermutations[list,Range[n],crit,m]
SelectPermutations[list:_[___],{n_Integer?NonNegative},crit_,m_:\[Infinity]]:=iSelectPermutations[list,{n},crit,m]
SelectPermutations[list:_[___],{nmin_Integer?NonNegative,nmax_Integer?NonNegative},crit_,m_:\[Infinity]]:=iSelectPermutations[list,Range[nmin,nmax],crit,m]
SelectPermutations[list:_[___],{nmin_Integer?NonNegative,nmax_Integer?NonNegative,dstep_Integer},crit_,m_:\[Infinity]]:=iSelectPermutations[list,Range[nmin,nmax,dstep],crit,m]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
