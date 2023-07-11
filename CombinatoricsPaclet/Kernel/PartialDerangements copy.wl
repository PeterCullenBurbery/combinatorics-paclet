(* ::Package:: *)

BeginPackage["PeterBurbery`CombinatoricsPaclet`"]

PeterBurbery`CombinatoricsPaclet`PartialDerangements

Begin["`Private`"]

PartialDerangements // ClearAll

PartialDerangements::usage = "PartialDerangements[multiset] returns the derangements of the multiset with 0 fixed points.\nPartialDerangements[multiset,number] returns the partial derangements of the multiset with the given number of fixed points.\nPartialDerangements[multiset,number,limit] returns only limit derangements.\nPartialDerangements[n] represents an operator form that takes n of the derangements.";
(*This seems like it would work but it doesn't because of a StyleBox.*)

(*PartialDerangements::usage = "PartialDerangements[multiset,number] returns the partial derangements of the multiset with the given number of fixed points.\nPartialDerangements[multiset,number,limit] returns only limit derangements.\nPartialDerangements[takespec] represents an operator form that takes from the partial derangements based on takespec.";
*)
PartialDerangements[set_List?ListQ, Optional[number_ ? (IntegerQ[#] && # \[Element] NonNegativeIntegers&
    ),1], Optional[limit_, All]] :=
    Take[Select[Count[SameQ @@@ Transpose[{#, set}], False] === Abs[Length[
        set] - number]&][Permutations[set]], limit]

PartialDerangements[n_] :=
    OperatorApplied[PartialDerangements,{2,3,1}][n]

PartialDerangements[args___] :=
    Null /; CheckArguments[PartialDerangements[args], {1, 2}]

End[]

EndPackage[]




