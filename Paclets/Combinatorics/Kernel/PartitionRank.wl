(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`Combinatorics`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`Combinatorics`PartitionRank;



Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


PartitionRank // ClearAll

PartitionRank::usage="PartitionRank[{b1,b2,\[Ellipsis]}] gives the integer corresponding to the Gray code represented by the bits bi.";

PartitionRank[v:{(0|1)..}]:=iPartitionRank[v]

iPartitionRank[v_]:=If[Length[v]<1.2*2^16(* empirically found threshold *),
iPartitionRankSmall[v],
iPartitionRankBig[v]]

iPartitionRankSmall[v_]:=
With[{n=FromDigits[v,2]},Fold[BitXor,n,BitShiftRight[n,Range[Length[v]-1]]]]

iPartitionRankBig[v_]:=Module[{n=FromDigits[v,2],res},
res=n;
Do[n=BitShiftRight[n];
res=BitXor[res,n],
{Length[v]-1}];
res]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
