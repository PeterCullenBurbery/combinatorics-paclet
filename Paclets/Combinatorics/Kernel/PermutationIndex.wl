(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`Combinatorics`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`Combinatorics`PermutationIndex;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

PermutationIndex // ClearAll

PermutationIndex::usage = "PermutationIndex[perm] gives the lexicographic index of permutation perm.";

PermutationIndex[perm_List] :=
    LehmerCodeIndex[LehmerCodeFromPermutation[perm]] + 1;

PermutationIndex[perm_?PermutationCyclesQ] :=
    PermutationIndex[PermutationList[perm]];

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
