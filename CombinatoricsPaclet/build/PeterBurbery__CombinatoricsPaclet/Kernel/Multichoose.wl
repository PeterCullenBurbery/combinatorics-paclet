(* ::Package:: *)

BeginPackage["PeterBurbery`CombinatoricsPaclet`"]

PeterBurbery`CombinatoricsPaclet`Multichoose

Begin["`Private`"]

Multichoose // ClearAll

Multichoose::usage = "Multichoose[n,k] represents n multichoose k.";

Multichoose[n_, k_] :=
    Binomial[n + k - 1, k]

End[]

EndPackage[]





