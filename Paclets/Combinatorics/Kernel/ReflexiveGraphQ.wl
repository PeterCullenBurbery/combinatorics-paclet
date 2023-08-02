(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`Combinatorics`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`Combinatorics`ReflexiveGraphQ;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


ReflexiveGraphQ//ClearAll

ReflexiveGraphQ::usage="ReflexiveGraphQ[g] yields True if the graph g is reflexive and False otherwise.";

ReflexiveGraphQ[g_Graph]:=False/;VertexCount[g]==0

ReflexiveGraphQ[g_Graph]:=Module[{e=List@@@EdgeList[g],i},Apply[And,Table[MemberQ[e,{i,i}],{i,VertexList[g]}]]]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
