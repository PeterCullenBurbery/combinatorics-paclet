(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`CombinatoricsPaclet`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`CombinatoricsPaclet`OrderlessCombinationsOfUnmarkedElements;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

OrderlessCombinationsOfUnmarkedElements // ClearAll

OrderlessCombinationsOfUnmarkedElements::usage = "OrderlessCombinationsOfUnmarkedElements[list,nspec] gives  orderless combinations for list and nspec with the constraint that the elements of list are unmarked by replacing the elements with integers.";

OrderlessCombinationsOfUnmarkedElements[set_, nspec_] :=
  Keys[GroupBy[PeterBurbery`CombinatoricsPaclet`CanonicalMultiset][PeterBurbery`CombinatoricsPaclet`OrderlessCombinations[
    set, nspec]]]

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
