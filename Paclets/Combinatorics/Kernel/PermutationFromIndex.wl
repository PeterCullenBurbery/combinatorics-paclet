(* ::Package:: *)

BeginPackage["PeterBurbery`Combinatorics`"]

PeterBurbery`Combinatorics`PermutationFromIndex

Begin["`Private`"]

PermutationFromIndex // ClearAll

PermutationFromIndex[index_Integer?IntegerQ, lengthInput_Integer?IntegerQ
    ] :=
    PermutationFromLehmerCode[LehmerCodeFromIndex[index, lengthInput]
        ]

PermutationFromIndex::usage = "PermutationFromIndex[index, lengthInput] returns the permutation of length lengthInput corresponding to the indexth permutation in lexicographic order.";

End[]

EndPackage[]



