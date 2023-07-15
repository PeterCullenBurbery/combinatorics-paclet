(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`CombinatoricsPaclet`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`CombinatoricsPaclet`NarayanaNumber;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


NarayanaNumber//ClearAll

SetAttributes[NarayanaNumber,{Listable,NumericFunction}]

NarayanaNumber::usage="NarayanaNumber[n,k] gives the Narayana number N(n,k).";

NarayanaNumber[n_,k_]:=1/n Binomial[n,k]Binomial[n,k-1]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
