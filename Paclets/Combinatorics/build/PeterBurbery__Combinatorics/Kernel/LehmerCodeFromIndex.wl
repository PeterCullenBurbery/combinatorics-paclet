(* ::Package:: *)

BeginPackage["PeterBurbery`Combinatorics`"]

PeterBurbery`Combinatorics`LehmerCodeFromIndex

Begin["`Private`"]

LehmerCodeFromIndex // ClearAll

LehmerCodeFromIndex[index_Integer?IntegerQ, length_Integer?IntegerQ] :=
    Reverse[Last /@ FoldList[{Floor[#1[[1]] / #2], Mod[#1[[1]], #2]}&,
         {index - 1, 0}, Range[2, length]]]

End[]

EndPackage[]
