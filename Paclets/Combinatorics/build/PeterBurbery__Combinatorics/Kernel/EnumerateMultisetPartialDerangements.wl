(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`Combinatorics`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`Combinatorics`EnumerateMultisetPartialDerangements;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)



EnumerateMultisetPartialDerangements // ClearAll

DerangementsCount // ClearAll

DerangementsCount[nvec_List] :=
    Integrate[Exp[-x] Times @@ (LaguerreL[nvec, x]), {x, 0, \[Infinity]
        }]

vCounts // ClearAll

vCounts[lst_, nfixed_] :=
    Counts @ Map[Sort @* Values @* Counts] @ Subsets[lst, {Length @ lst
         - nfixed}]

EnumerateMultisetPartialDerangements::usage = "EnumerateMultisetPartialDerangements[multiset] enumerates the number of derangements of a multiset with 0 fixed points.EnumerateMultisetPartialDerangements[multiset, nfixed] enumerates the number of partial derangements of a multiset with nfixed fixed points.";

EnumerateMultisetPartialDerangements[multiset_, Optional[nfixed_Integer ? (IntegerQ[
    #] && # \[Element] NonNegativeIntegers&),0]] /; nfixed <= Length[multiset
    ] :=
    Abs @ Total @ KeyValueMap[#2 DerangementsCount @ #&] @ vCounts[multiset,
         nfixed]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
