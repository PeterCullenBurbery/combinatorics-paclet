(* ::Package:: *)

BeginPackage["PeterBurbery`CombinatoricsPaclet`"]

PeterBurbery`CombinatoricsPaclet`EnumerateMultisetPartialDerangements

Begin["`Private`"]

EnumerateMultisetPartialDerangements // ClearAll

DerangementsCount // ClearAll

DerangementsCount[nvec_List] :=
    Integrate[Exp[-x] Times @@ (LaguerreL[nvec, x]), {x, 0, \[Infinity]
        }]

vCounts // ClearAll

vCounts[lst_, nfixed_] :=
    Counts @ Map[Sort @* Values @* Counts] @ Subsets[lst, {Length @ lst
         - nfixed}]

EnumerateMultisetPartialDerangements::usage = "EnumerateMultisetPartialDerangements[multiset, nfixed] enumerates the number of partial derangements of a multiset with nfixed fixed points.";

EnumerateMultisetPartialDerangements[multiset_, nfixed_Integer ? (IntegerQ[
    #] && # \[Element] NonNegativeIntegers&)] /; nfixed <= Length[multiset
    ] :=
    Abs @ Total @ KeyValueMap[#2 DerangementsCount @ #&] @ vCounts[multiset,
         nfixed]

End[]

EndPackage[]




