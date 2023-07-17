(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`CombinatoricsPaclet`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`CombinatoricsPaclet`PermutationMajorIndex;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


PermutationMajorIndex//ClearAll

PermutationMajorIndex::usage="PermutationMajorIndex[p] gives the major index of the permutation p.";

PermutationMajorIndex[p_?PermutationListQ]:=Module[{i},Sum[If[p[[i]]>p[[i+1]],i,0],{i,Length[p]-1}]](*https://resources.wolframcloud.com/FunctionRepository/resources/PermutationMajorIndex/*)


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
