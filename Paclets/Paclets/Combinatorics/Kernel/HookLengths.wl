(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`Combinatorics`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`Combinatorics`HookLengths;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


HookLengths//ClearAll

HookLengths::usage="HookLengths[p] gives a list of lists of lengths of p for a partition p where an entry is the hook length in the corresponding cell in the Young tableau of p.";

HookLengths[partition_]/;IntegerPartitionQ[partition]:=With[{partitionT=ConjugatePartition[partition]},
Table[partition[[i]]+partitionT[[j]]-i-j+1,{i,Length[partition]},{j,partition[[i]]}]]



(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
