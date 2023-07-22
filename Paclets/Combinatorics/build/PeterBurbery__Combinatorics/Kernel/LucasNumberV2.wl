(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`Combinatorics`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`Combinatorics`LucasNumberV2;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

LucasNumberV2 // ClearAll

SetAttributes[LucasNumberV2, {NumericFunction, Listable}]

LucasNumberV2::usage = "LucasNumberV2[n, p, q] calculates the term of the Lucas sequence of the second kind V_n(p, q).";

LucasNumberV2[0, p_, q_] :=
    2;

LucasNumberV2[1, p_, q_] :=
    p;

LucasNumberV2[n_, p_, q_] /; n > 1 := LucasNumberV2[n, p, q] =
    p LucasNumberV2[n - 1, p, q] - q LucasNumberV2[n - 2, p, q]

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
