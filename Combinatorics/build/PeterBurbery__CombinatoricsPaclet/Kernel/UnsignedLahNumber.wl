(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`CombinatoricsPaclet`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`CombinatoricsPaclet`UnsignedLahNumber;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


UnsignedLahNumber//ClearAll

SetAttributes[UnsignedLahNumber,{Listable,NumericFunction}]

UnsignedLahNumber::usage="UnsignedLahNumber[n,k] gives the unsigned Lah number L(n,k)."

UnsignedLahNumber[n_,k_]:=Binomial[n-1,k-1] n!/k!


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
