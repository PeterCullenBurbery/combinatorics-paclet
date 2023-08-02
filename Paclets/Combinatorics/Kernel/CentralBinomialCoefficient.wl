(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`Combinatorics`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`Combinatorics`CentralBinomialCoefficient;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

CentralBinomialCoefficient // ClearAll

SetAttributes[CentralBinomialCoefficient, {NumericFunction, Listable}
    ]

CentralBinomialCoefficient::usage = "CentralBinomialCoefficient[n] calculates the nth central binomial coefficient.";

CentralBinomialCoefficient[n_] :=
    Binomial[2 n, n]

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
