(* ::Package:: *)

BeginPackage["PeterBurbery`CombinatoricsPaclet`"]

PeterBurbery`CombinatoricsPaclet`PartialDerangements

Begin["`Private`"]

PartialDerangements // ClearAll

PartialDerangements::usage = "PartialDerangements[multiset,number] returns the partial derangements of the multiset with the given number of fixed points.";

PartialDerangements[set_, number_ ? (IntegerQ[#] && # \[Element] NonNegativeIntegers&
    ), Optional[limit_, All]] :=
    Take[Select[Count[SameQ @@@ Transpose[{#, set}], False] === Abs[Length[
        set] - number]&][Permutations[set]], limit]

End[]

EndPackage[]
