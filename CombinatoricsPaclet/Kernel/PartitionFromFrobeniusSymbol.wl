(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`CombinatoricsPaclet`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`CombinatoricsPaclet`PartitionFromFrobeniusSymbol;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


PartitionFromFrobeniusSymbol//ClearAll

PartitionFromFrobeniusSymbol::usage="PartitionFromFrobeniusSymbol[f] gives the partition whose Frobenius symbol is f.";

PartitionFromFrobeniusSymbol[f_]:=Module[
{a,b,d},
{a,b}=f;
d=Length@a;
Join[
a+Range@d,
ConjugatePartition@DeleteCases[b-Reverse[-1+Range@d],0]
]
]/;MatrixQ@f&&Length@f==2&&IntegerPartitionQ[First@f+1]&&IntegerPartitionQ[Last@f+1]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
