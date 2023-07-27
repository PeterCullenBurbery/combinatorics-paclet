(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`Combinatorics`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`Combinatorics`RationalNumberRepeatingDecimalPeriod;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

RationalNumberRepeatingDecimalPeriod // ClearAll

SetAttributes[RationalNumberRepeatingDecimalPeriod, {NumericFunction,
     Listable}];

RationalNumberRepeatingDecimalPeriod::usage = "RationalNumberRepeatingDecimalPeriod[rational] returns the period of the repeating decimal for rational.";

RationalNumberRepeatingDecimalPeriod[n_Rational] :=
    First[RealDigits[n]] /. {{___, list_?ListQ} :> Length[list], list_
        ?ListQ -> 0}

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
