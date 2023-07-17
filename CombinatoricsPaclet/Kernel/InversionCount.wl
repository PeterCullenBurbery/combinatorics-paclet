(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`CombinatoricsPaclet`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`CombinatoricsPaclet`InversionCount;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


InversionCount//ClearAll

InversionCount::usage="InversionCount[p] counts the number of inversions in permutation p.";

InversionCount[{}]:=0

InversionCount[p_?PermutationListQ]:=Total[ToInversionVector[p]]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
