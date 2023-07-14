(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`CombinatoricsPaclet`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`CombinatoricsPaclet`ZeckendorfRepresentation;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


ZeckendorfRepresentation//ClearAll

SetAttributes[ZeckendorfRepresentation,{Listable,NumericFunction}]

ZeckendorfRepresentation::usage="ZeckendorfRepresentation[n,k] gives the unsigned Lah number L(n,k)."

ZeckendorfRepresentation[n_,k_]:=Binomial[n-1,k-1] n!/k!


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
