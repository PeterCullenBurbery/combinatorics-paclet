(* ::Package:: *)

BeginPackage["PeterBurbery`CombinatoricsPaclet`"]

PeterBurbery`CombinatoricsPaclet`MultisetPartialDerangements

Begin["`Private`"]

MultisetPartialDerangements // ClearAll

MultisetPartialDerangements::usage = "MultisetPartialDerangements[multiset] returns the derangements of the multiset with 0 fixed points where every element moves.\nMultisetPartialDerangements[multiset,number] returns the partial derangements of the multiset with the given number of fixed points.\nMultisetPartialDerangements[multiset,number,limit] returns only limit derangements.\nMultisetPartialDerangements[n] represents an operator form that takes n of the derangements.";
(*This seems like it would work but it doesn't because of a StyleBox.*)

(*PartialDerangements::usage = "PartialDerangements[multiset,number] returns the partial derangements of the multiset with the given number of fixed points.\nPartialDerangements[multiset,number,limit] returns only limit derangements.\nPartialDerangements[takespec] represents an operator form that takes from the partial derangements based on takespec.";
*)
MultisetPartialDerangements[set_List?ListQ, Optional[number_ ? (IntegerQ[#] && # \[Element] NonNegativeIntegers&
    ),1], Optional[limit_, All]] :=
    Take[Select[Count[SameQ @@@ Transpose[{#, set}], False] === Abs[Length[
        set] - number]&][Permutations[set]], limit]

MultisetPartialDerangements[n_] :=
    OperatorApplied[PartialDerangements,{3,1,2}][n]

MultisetPartialDerangements[args___] :=
    Null /; CheckArguments[MultisetPartialDerangements[args], {1, 3}]

End[]

EndPackage[]



