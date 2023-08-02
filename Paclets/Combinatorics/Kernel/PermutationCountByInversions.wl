(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`Combinatorics`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`Combinatorics`PermutationCountByInversions;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


PermutationCountByInversions//ClearAll

PermutationCountByInversions::usage="PermutationCountByInversions[n, k] gives the number of permutations of length n with exactly k inversions.\nPermutationCountByInversions[n] gives a List for all k starting at zero.";

PermutationCountByInversions[n_Integer?Positive]:=PermutationCountByInversions[n,All]

PermutationCountByInversions[n_Integer?Positive,All]:=Module[{p,z,i},p=Expand[Product[Cancel[(z^i-1)/(z-1)],{i,1,n}]];
CoefficientList[p,z]]

PermutationCountByInversions[n_Integer,k_Integer]:=0/;(k>Binomial[n,2])

PermutationCountByInversions[n_Integer,0]:=1

PermutationCountByInversions[n_Integer,k_Integer?Positive]:=PermutationCountByInversions[n,All][[k+1]]
(*https://resources.wolframcloud.com/FunctionRepository/resources/PermutationCountByInversions*)


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
