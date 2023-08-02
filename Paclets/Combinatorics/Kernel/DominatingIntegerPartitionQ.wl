(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`Combinatorics`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`Combinatorics`DominatingIntegerPartitionQ;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


DominatingIntegerPartitionQ//ClearAll

DominatingIntegerPartitionQ::usage="DominatingIntegerPartitionQ[p, q] yields True if integer partition p dominates integer partition q and False otherwise.";

DominatingIntegerPartitionQ[a_,b_]/;IntegerPartitionQ[a]&&IntegerPartitionQ[b]&&Total[a]==Total[b]:=(Length[a]<=Length[b])&&With[{aa=Accumulate[a],bb=Accumulate[Take[b,Length[a]]]},VectorQ[aa-bb,NonNegative]]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
