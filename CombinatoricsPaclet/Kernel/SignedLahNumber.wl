(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`CombinatoricsPaclet`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`CombinatoricsPaclet`SignedLahNumber;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


SignedLahNumber//ClearAll

SetAttributes[SignedLahNumber,{Listable,NumericFunction}]

SignedLahNumber::usage="SignedLahNumber[n,k] gives the signed Lah number L(n,k).";

SignedLahNumber[n_,k_]:=(-1)^n Binomial[n-1,k-1] n!/k!


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
