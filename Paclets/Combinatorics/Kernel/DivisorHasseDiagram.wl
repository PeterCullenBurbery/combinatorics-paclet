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

DivisorHasseDiagram::usage="DivisorHasseDiagram[list] makes sublists of list starting at its left-to-right maxima.";

DivisorHasseDiagram[list_]:=TakeList[list,Length/@Split[Max/@Table[Take[list,n],{n,Length@list}]]]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
