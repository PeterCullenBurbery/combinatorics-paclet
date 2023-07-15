(* ::Package:: *)

BeginPackage["PeterBurbery`CombinatoricsPaclet`"]

PeterBurbery`CombinatoricsPaclet`MultisetPartialDerangements

Begin["`Private`"]

MultisetPartialDerangements // ClearAll

MultisetPartialDerangements::usage = "MultisetPartialDerangements[multiset,number] returns a list of permutations of multiset where number elements are in their original place, often referred to as fixed points in the study of derangements.\nMultisetPartialDerangements[multiset,number,limit] returns a list of all the partial derangements of the multiset with the specified number of fixed points and with the specified limit on the number of partial derangements returned.";

MultisetPartialDerangements[set_, Optional[numberOfFixedPoints_, 0], 
  Optional[limit_, All]] := 
 Take[Select[
    Count[MapApply[SameQ, Transpose[{#, set}]], True] === 
      numberOfFixedPoints &]@Permutations[set], limit]

End[]

EndPackage[]
