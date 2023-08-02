(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`Combinatorics`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`Combinatorics`PermutationDescents;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

PermutationDescents // ClearAll

PermutationDescents::usage = "PermutationDescents[perm] gives the indices i where p_i>p_{i+1}, where the permutation p={p_1,p_2,...,p_n} is given as a list of integers.";

PermutationDescents[p_] :=
    Reverse[Length @ p - PermutationAscents @ Reverse @ p]

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
