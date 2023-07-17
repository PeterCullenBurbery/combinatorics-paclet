(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`CombinatoricsPaclet`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`CombinatoricsPaclet`HasseDiagram;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


HasseDiagram//ClearAll

HasseDiagram::usage="HasseDiagram[f,s] constructs a Hasse diagram of the partial order set (poset) defined by the binary relation f and set s.";

Options[HasseDiagram]=Options[Graph];

HasseDiagram[f_,s_List,opts:OptionsPattern[]]:=TransitiveReductionGraph[RelationGraph[f,s,opts]]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
