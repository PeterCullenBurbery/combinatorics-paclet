(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`CombinatoricsPaclet`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`CombinatoricsPaclet`TableauQ;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


TableauQ//ClearAll

SetAttributes[TableauQ,{Listable,NumericFunction}]

TableauQ::usage="TableauQ[n,k] gives the signed Lah number L(n,k).";

TableauQ[n_,k_]:=(-1)^n Binomial[n-1,k-1] n!/k!


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
