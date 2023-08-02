(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`Combinatorics`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`Combinatorics`SubsetIndex;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

SubsetIndex // ClearAll

SubsetIndex::usage = "SubsetIndex[list] gives the index of subset list.";

SubsetIndex[subset_List] :=
    (Total[MapIndexed[Binomial[#1, #2[[1]]]&, subset]] + 1)

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
