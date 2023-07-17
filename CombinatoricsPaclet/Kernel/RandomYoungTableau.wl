(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`CombinatoricsPaclet`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`CombinatoricsPaclet`RandomYoungTableau;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


RandomYoungTableau//ClearAll

RandomYoungTableau::usage="RandomYoungTableau[p] generates a random Young tableau of shape p.\nRandomYoungTableau[p,n] generates n random Young tableaux of shape p.";

RandomYoungTableau[shape_,n_Integer?NonNegative]/;IntegerPartitionQ[shape]:=Table[RandomYoungTableau[shape],{n}]

RandomYoungTableau[shape_]/;IntegerPartitionQ[shape]:=Module[{p=shape,h,i,j,n,res,y},
n=Total[shape];y=ArrayPad[ConjugatePartition[p],{0,n-Max[p]}];
Do[
While[
i=RandomInteger[{1,First[y]}];
j=RandomInteger[{1,First[p]}];
(i>y[[j]])||(j>p[[i]])
];
While[
If[(h=y[[j]]+p[[i]]-i-j)!=0,
If[RandomChoice[{True,False}],
i=RandomInteger[{i,y[[j]]}],
j=RandomInteger[{j,p[[i]]}]
]
];
h!=0];
p[[i]]--;y[[j]]--;
y[[m]]=i,
{m,n,1,-1}];
res=Table[Flatten[Position[y,k]],{k,Length[Union[y]]}];
res/;TableauQ[res]]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
