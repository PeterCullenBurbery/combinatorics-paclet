(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`Combinatorics`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`Combinatorics`DurfeeSquare;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


DurfeeSquare // ClearAll

DurfeeSquare::usage="DurfeeSquare[p] gives the number of rows involved in the Durfee square of partition p, the side of the largest-sized square contained within the Ferrers diagram of p.";

DurfeeSquare[{}] = 0
 
DurfeeSquare[s_List] := 
 Module[{i, max = 1}, 
   Do[If[s[[i]] >= i, max = i], {i, 2, Min[Length[s], First[s]]}]; 
   max] /; PeterBurbery`Combinatorics`IntegerPartitionQ[s]

(* (* slower, but uses less memory *)
DurfeeSquare[{n_Integer?Positive}]:=NestWhileList[nextDurfeeSquare,1,#<=n&,1,Infinity,-1]*)


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
