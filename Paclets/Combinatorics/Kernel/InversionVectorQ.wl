(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`Combinatorics`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`Combinatorics`InversionVectorQ;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


InversionVectorQ//ClearAll

InversionVectorQ::usage="InversionVectorQ[iv] checks if iv is the inversion vector of a permutation list.";

InversionVectorQ@iv_:=And@@Thread[GreaterEqual[Range[0,-1+Length@iv],Reverse@iv]]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
