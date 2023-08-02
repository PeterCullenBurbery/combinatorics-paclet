(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`Combinatorics`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`Combinatorics`OrderlessCombinationsOfUnmarkedElements;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

OrderlessCombinationsOfUnmarkedElements // ClearAll

OrderlessCombinationsOfUnmarkedElements::usage = "OrderlessCombinationsOfUnmarkedElements[list,nspec] gives  orderless combinations for list and nspec with the constraint that the elements of list are unmarked by replacing the elements with integers.";

OrderlessCombinationsOfUnmarkedElements[set_, nspec_] :=
  Keys[GroupBy[PeterBurbery`Combinatorics`CanonicalMultiset][PeterBurbery`Combinatorics`OrderlessCombinations[
    set, nspec]]]                 (*CanonicalMultiset /@ 
DeleteDuplicatesBy[CanonicalMultiset][
 OrderlessCombinations[{"dog", "cat", "bird"}, 3]] also works*)

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
