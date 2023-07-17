(* ::Package:: *)

BeginPackage["PeterBurbery`CombinatoricsPaclet`"]

PeterBurbery`CombinatoricsPaclet`PermutationFromIndex

Begin["`Private`"]

PermutationFromIndex // ClearAll

PermutationFromIndex[index_Integer?IntegerQ, length_Integer?IntegerQ] :=
    PermutationFromLehmerCode[LehmerCodeFromIndex[index, length]]

End[]

EndPackage[]
