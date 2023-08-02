(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`Combinatorics`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`Combinatorics`TableauQ;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


TableauQ//ClearAll

TableauQ::usage="TableauQ[t] determines if t is a Young tableau.";

TableauQ[{}]=True;
TableauQ[t_]:=MatchQ[t,{{__Integer?Positive}..}]&&AllTrue[Differences/@t,Positive,2]&&AllTrue[Differences[Map[Length,t]],NonPositive]&&
With[{tt=Flatten[t,{{2},{1}}]},
AllTrue[Differences/@tt,Positive,2]&&
AllTrue[Differences[Map[Length,tt]],NonPositive]];


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
