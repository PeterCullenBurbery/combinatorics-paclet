(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`Combinatorics`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`Combinatorics`PartialOrderGraphQ;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


PartialOrderGraphQ//ClearAll

PartialOrderGraphQ::usage="PartialOrderGraphQ[f] gives the partition whose Frobenius symbol is f.";

PartialOrderGraphQ[f_]:=Module[
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
