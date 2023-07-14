(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)
BeginPackage["PeterBurbery`CombinatoricsPaclet`"];


(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`CombinatoricsPaclet`LucasNumberV2;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

LucasNumberV2 // ClearAll

SetAttributes[LucasNumberV2, {Listable, NumericFunction}]

LucasNumberV2::usage="LucasNumberV2[n, p, q] calculates the term of the Lucas sequence of the second kind V_n(p, q).";

LucasNumberV2[n_, m_] :=
    0 /; Or @@ {m >= n, n === 0}

LucasNumberV2[n_, m_] /; m === 0 :=
    1

LucasNumberV2[n_, k_] := LucasNumberV2[n, k] =
    (2 n - k - 1) LucasNumberV2[n - 1, k - 1] + (k + 1) LucasNumberV2[
        n - 1, k]

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
