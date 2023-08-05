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

PermutationDescents::usage = "PermutationDescents[perm] gives the descents of the permutation perm.";

PermutationDescents[p_] :=
    Reverse[Length @ p - FindAscentPositions @ Reverse @ p]

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
