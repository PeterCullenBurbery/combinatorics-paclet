(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`Combinatorics`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`Combinatorics`DescendingSublists;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


DescendingSublists//ClearAll

DescendingSublists::usage="DescendingSublists[list] makes sublists of list starting at its left-to-right maxima.";

DescendingSublists[list_]:=TakeList[list,Length/@Split[Max/@Table[Take[list,n],{n,Length@list}]]]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
