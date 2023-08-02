(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`Combinatorics`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`Combinatorics`NextPermutation;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


NextPermutation//ClearAll

NextPermutation::usage="NextPermutation[p] gives the permutation following p in lexicographic order.";

NextPermutation[l_List]:=Module[{sorted=Sort[l]},sorted/;l===Reverse[sorted]]

NextPermutation[l_List]:=Module[{n=Length[l],i,j,nl=l},i=n-1;While[Order[nl[[i]],nl[[i+1]]]==-1,i--];
j=n;While[Order[nl[[j]],nl[[i]]]==1,j--];
{nl[[i]],nl[[j]]}={nl[[j]],nl[[i]]};
Join[Take[nl,i],Reverse[Drop[nl,i]]]]



(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
