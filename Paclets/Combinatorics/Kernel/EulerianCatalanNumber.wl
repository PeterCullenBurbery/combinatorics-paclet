(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`Combinatorics`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`Combinatorics`EulerianCatalanNumber;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

EulerianCatalanNumber // ClearAll

SetAttributes[EulerianCatalanNumber, {NumericFunction, Listable}]

EulerianCatalanNumber::usage = "EulerianCatalanNumber[n] calculates the nth Eulerian Catalan number.";

EulerianCatalanNumber[n_] :=
    1 / (n + 1) PeterBurbery`Combinatorics`EulerianNumber[2 n + 1, n 
        + 1](*Although this is different from the definition of 1/n+1*EulerianNumber[2n+1,n], we need to use n+1 instead of n for the second argument*)

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
