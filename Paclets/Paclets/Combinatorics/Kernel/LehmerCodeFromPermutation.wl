(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`Combinatorics`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`Combinatorics`LehmerCodeFromPermutation;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

LehmerCodeFromPermutation // ClearAll

LehmerCodeFromPermutation::usage = "LehmerCodeFromPermutation[perm] creates the Lehmer code corresponding to permutation perm.";

LehmerCodeFromPermutation[perm_List] :=
    Flatten[Table[Position[Sort[Drop[perm, n - 1]], perm[[n]]] - 1, {
        n, 1, Length[perm]}]]

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
