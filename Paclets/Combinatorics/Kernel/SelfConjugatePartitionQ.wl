(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`Combinatorics`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`Combinatorics`SelfConjugatePartitionQ;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

SelfConjugatePartitionQ // ClearAll

SelfConjugatePartitionQ::usage = "SelfConjugatePartitionQ[partition] returns True when partition is self-conjugate.";

SelfConjugatePartitionQ[partition_?IntegerPartitionQ] :=
    partition === ConjugatePartition[partition]

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
