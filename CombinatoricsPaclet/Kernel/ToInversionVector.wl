(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`CombinatoricsPaclet`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`CombinatoricsPaclet`ToInversionVector;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


ToInversionVector//ClearAll

ToInversionVector::usage="ToInversionVector[p] gives the inversion vector of the permutation list p.";

ToInversionVector[p_?PermutationListQ]:=Table[Length@Select[Take[p,InversePermutation[p][[i]]],#1>i&],{i,Length[p]}]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
