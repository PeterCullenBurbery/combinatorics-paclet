(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`Combinatorics`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`Combinatorics`PermutationAscents;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


PermutationAscents//ClearAll

PermutationAscents::usage="PermutationAscents[p] gives the indices i where p_i<p_i+1, where the permutation p={p_1, p_2, \[Ellipsis], p_n} is written as a list.";

PermutationAscents[p_] := Select[-1 + Range[Length[p]], p[[#1]] < p[[#1 + 1]] & ] /; PermutationListQ[p]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
