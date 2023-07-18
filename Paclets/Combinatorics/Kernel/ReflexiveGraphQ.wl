(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`Combinatorics`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`Combinatorics`ReflexiveGraphQ;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

ReflexiveGraphQ // ClearAll

SetAttributes[ReflexiveGraphQ, {NumericFunction, Listable}]

ReflexiveGraphQ::usage = "ReflexiveGraphQ[n] calculates the nth secant number.";

ReflexiveGraphQ[n_] :=
    Abs[EulerE[2 n]]

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
