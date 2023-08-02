(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`Combinatorics`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`Combinatorics`DivisorHasseDiagram;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


DivisorHasseDiagram//ClearAll

DivisorHasseDiagram::usage="DivisorHasseDiagram[n] gives a Hasse diagram based on the divisors of n, represented as a Graph.";

Options[DivisorHasseDiagram]=Options[Graph];

DivisorHasseDiagram[n_Integer?Positive,opt:OptionsPattern[]]:=Module[{divisors=Divisors[n],links},
links=Reap[Do[If[a>b&&Divisible[a,b],Sow[a\[DirectedEdge]b]],{a,divisors},{b,divisors}];Nothing]//Flatten;
TransitiveReductionGraph[links,Evaluate@FilterRules[{opt},Options[Graph]]]
]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
