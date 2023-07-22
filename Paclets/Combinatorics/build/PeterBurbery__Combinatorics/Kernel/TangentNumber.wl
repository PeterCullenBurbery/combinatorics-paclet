(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`Combinatorics`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`Combinatorics`TangentNumber;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

TangentNumber // ClearAll

SetAttributes[TangentNumber, {NumericFunction, Listable}]

TangentNumber::usage = 
  "TangentNumber[n] calculates the nth tangent number.";

TangentNumber[n_] := (2^(-1 + 2 n) (-1 + 4^n) Abs[BernoulliB[2 n]])/n

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
