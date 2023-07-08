(* ::Package:: *)

BeginPackage["PeterBurbery`CombinatoricsPaclet`"]

PeterBurbery`CombinatoricsPaclet`PartialDerangements

Begin["`Private`"]

PartialDerangements // ClearAll
PartialDerangements[set_, 
  number_?(IntegerQ[#] && # \[Element] NonNegativeIntegers &)] := 
 Select[Count[SameQ @@@ Transpose[{#, set}], False] === number &][
  Permutations[set]]
End[]

EndPackage[]
