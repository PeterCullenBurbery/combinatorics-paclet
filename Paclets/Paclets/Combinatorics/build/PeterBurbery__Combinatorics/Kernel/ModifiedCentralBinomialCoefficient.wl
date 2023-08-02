(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`Combinatorics`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`Combinatorics`ModifiedCentralBinomialCoefficient;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

ModifiedCentralBinomialCoefficient // ClearAll

SetAttributes[ModifiedCentralBinomialCoefficient, {NumericFunction, Listable
    }]

ModifiedCentralBinomialCoefficient::usage = "ModifiedCentralBinomialCoefficient[n] calculates the nth modified central binomial coefficient.";

ModifiedCentralBinomialCoefficient[n_] :=
    Binomial[n, Quotient[n, 2]]

(*Binomial[n,Floor[n/2]]*)

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
