(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`Combinatorics`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`Combinatorics`SelectTuples;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


SelectTuples//ClearAll

SelectTuples::usage="SelectTuples[list, n, crit] generates a list of n-tuples of elements from list that satisfy crit.\nSelectTuples[{list1, list2, \[Ellipsis]}, crit] generates a list of all possible tuples whose ith element is from listi that satisfy crit.\nSelectTuples[\[Ellipsis], crit, m] picks at most the first m tuples that satisfy crit.";

SelectTuples[list_List,n_Integer?NonNegative,crit_,m_:\[Infinity]]:=Module[{len=Length[list],vars,val,its,result,found=0},
vars=Table[Unique["i"],n];
its={#,len}&/@vars;
result=Reap[
Do[
val=Part[list,vars];
If[TrueQ[crit[val]],
found++;
If[found>m,Break[]];
Sow[val];
]
,
Evaluate[Sequence@@its]
];
];
First[result[[2]],{}]
]
SelectTuples[list:{_List...},crit_,m_:\[Infinity]]:=Module[{n=Length[list],lens=Length/@list,vars,val, its,result,found=0},
vars=Table[Unique["i"],n];
its=Transpose[{vars,lens}];
result=Reap[
Do[
val=MapThread[Part,{list,vars}];
If[TrueQ[crit[val]],
found++;
If[found>m,Break[]];
Sow[val];
]
,
Evaluate[Sequence@@its]
];
];
First[result[[2]],{}]
]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
