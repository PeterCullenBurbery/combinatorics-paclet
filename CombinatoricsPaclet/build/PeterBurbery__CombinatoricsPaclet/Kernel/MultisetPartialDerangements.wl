(* ::Package:: *)

BeginPackage["PeterBurbery`CombinatoricsPaclet`"]

PeterBurbery`CombinatoricsPaclet`MultisetPartialDerangements

Begin["`Private`"]

MultisetPartialDerangements // ClearAll

MultisetPartialDerangements::usage = "MultisetPartialDerangements[multiset] returns the derangements of the multiset with 0 fixed points where every element moves.\nMultisetPartialDerangements[multiset, number] returns the partial derangements of the multiset with the given number of fixed points.\nMultisetPartialDerangements[multiset,number,limit] returns only limit derangements.";

MultisetPartialDerangements[set_,Optional[numberOfFixedPoints_,0],Optional[limit_,All]]:=Take[Select[Count[MapApply[SameQ,Transpose[{#,set}]],True]===numberOfFixedPoints&]@Permutations[set],limit]

MultisetPartialDerangements[args___] :=
    Null /; CheckArguments[MultisetPartialDerangements[args], {1, 3}]

End[]

EndPackage[]




