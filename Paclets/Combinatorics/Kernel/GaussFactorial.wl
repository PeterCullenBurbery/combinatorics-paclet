(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`Combinatorics`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`Combinatorics`GaussFactorial;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


GaussFactorial//ClearAll

SetAttributes[GaussFactorial,{Listable,NumericFunction}]

GaussFactorial::usage="GaussFactorial[n,k] computes the Gauss factorial N_k!";
(*When we do GaussFactorial[N,n] we have N_n!, the phitorial*)
GaussFactorial[n_Integer?IntegerQ/;1<=n,k_]:=Times@@Select[CoprimeQ[#,k]&][Range[n]]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
