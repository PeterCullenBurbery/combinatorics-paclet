(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`CombinatoricsPaclet`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`CombinatoricsPaclet`SecantNumber;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

SecantNumber // ClearAll

SetAttributes[SecantNumber, {NumericFunction, Listable}]

SecantNumber::usage = "SecantNumber[n] calculates the nth secant number.";

SecantNumber[n_] :=
    Abs[EulerE[2 n]]

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
