(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`CombinatoricsPaclet`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`CombinatoricsPaclet`IntegerPartitionQ;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


IntegerPartitionQ // ClearAll

IntegerPartitionQ::usage="IntegerPartitionQ[x] checks whether x is a weakly decreasing list of positive integers.\nIntegerPartitionQ[x,n] checks whether x is an integer partition of n.";

IntegerPartitionQ[x_] := 
 VectorQ[x, Internal`PositiveIntegerQ] && 
  VectorQ[Differences[x], Internal`NonPositiveIntegerQ]
IntegerPartitionQ[x_, n_] := 
 IntegerQ[n] && IntegerPartitionQ[x] && Total[x] == n


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
