(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`Combinatorics`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`Combinatorics`PermutationGraph;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


PermutationGraph//ClearAll

PermutationGraph::usage="PermutationGraph[p] gives the permutation graph for the permutation p.";

Options[PermutationGraph]=Options[Graph];

PermutationGraph[p_?PermutationListQ,opts:OptionsPattern[]]:=Module[{q=InversePermutation[p]//PermutationList},RelationGraph[((#1<#2&&q[[#1]]>q[[#2]])||(#1>#2&&q[[#1]]<q[[#2]]))&,Range[Length[q]],opts]
]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
