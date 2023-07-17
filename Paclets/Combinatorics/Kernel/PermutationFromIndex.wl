(* ::Package:: *)

BeginPackage["PeterBurbery`Combinatorics`"]

PeterBurbery`Combinatorics`PermutationFromIndex

Begin["`Private`"]

PermutationFromIndex // ClearAll

PermutationFromIndex[index_Integer?IntegerQ, length_Integer?IntegerQ] :=
    PermutationFromLehmerCode[LehmerCodeFromIndex[index, length]]

End[]

EndPackage[]
