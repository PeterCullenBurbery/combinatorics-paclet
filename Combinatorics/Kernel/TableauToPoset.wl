(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`CombinatoricsPaclet`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`CombinatoricsPaclet`TableauToPoset;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


TableauToPoset//ClearAll

TableauToPoset::usage="TableauToPoset[young] converts the Young tableau young to a partially ordered set of coordinates.";

TableauToPoset[young_]/;TableauQ[young]:= Reverse[Sort[Flatten[MapIndexed[{#1,#2}&,young,{2}],1]][[All,-1]],2]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
