(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`CombinatoricsPaclet`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`CombinatoricsPaclet`ZeckendorfRepresentation;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


ZeckendorfRepresentation//ClearAll

SetAttributes[ZeckendorfRepresentation,{Listable,NumericFunction}]

ZeckendorfRepresentation::usage="ZeckendorfRepresentation[n] gives the 0-1 list that indicates the unique nonconsecutive Fibonacci numbers that sum to the non-negative integer n.";

ZeckendorfRepresentation[(n_Integer)?(#1 >= 0 & )] := Module[{i, k, l, m, addon, r}, k = 0; If[n == 0, r = {0}, If[n == 1, r = {1}, l = LeadingIndex[n]; m = n - Fibonacci[l]; k = LeadingIndex[m]; addon = Flatten[{1, Table[0, {i, k + 2, l}]}]; r = Flatten[{addon, ZeckendorfRepresentation[m]}]]]; r]

LeadingIndex[(n_Integer)?(#1 >= 0 & )] := Module[{k}, If[n == 0, k = 2, For[k = 2, Fibonacci[k] <= n, k++]; k--; ]; k]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
