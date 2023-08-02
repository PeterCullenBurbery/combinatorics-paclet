(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`Combinatorics`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`Combinatorics`Primorial;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


ClearAll[Primorial];

Primorial::usage="Primorial[n] calculates the product of the primes up to n.";

SetAttributes[Primorial, Listable];

Primorial[Infinity] = 4 Pi^2;

Primorial[n_Integer?IntegerQ] :=
    Array[Prime, PrimePi[n], 1, Times]



(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
