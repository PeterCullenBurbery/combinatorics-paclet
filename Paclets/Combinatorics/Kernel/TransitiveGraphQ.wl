(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`Combinatorics`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`Combinatorics`TransitiveGraphQ;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


TransitiveGraphQ//ClearAll

TransitiveGraphQ::usage="TransitiveGraphQ[p] gives the inversion vector of the permutation list p.";

TransitiveGraphQ[p_?PermutationListQ]:=Table[Length@Select[Take[p,InversePermutation[p][[i]]],#1>i&],{i,Length[p]}]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
