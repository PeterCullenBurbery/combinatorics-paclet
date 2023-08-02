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

PartitionRank::usage = "PartitionRank[x] gives the difference of the largest part of the partition x and the number of parts of x.\n";

PartitionRank[x_] :=
    First @ x - Length @ x /; IntegerPartitionQ @ x

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
