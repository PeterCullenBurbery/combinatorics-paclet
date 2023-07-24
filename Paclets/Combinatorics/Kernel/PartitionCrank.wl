(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`Combinatorics`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`Combinatorics`PartitionCrank;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

PartitionCrank // ClearAll

PartitionCrank::usage = "PartitionCrank[x] gives Dyson's crank of the partition x.";

PartitionCrank[{1}] = 1;

PartitionCrank\[Mu][\[Lambda]_] :=
    Count[# > Count[\[Lambda], 1]& /@ \[Lambda], True] /; ResourceFunction[
        "IntegerPartitionQ"][\[Lambda]]

PartitionCrank[\[Lambda]_] :=
    If[Count[\[Lambda], 1] > 0,
            PartitionCrank\[Mu][\[Lambda]] - Count[\[Lambda], 1]
            ,
            Max @ \[Lambda]
        ] /; ResourceFunction["IntegerPartitionQ"][\[Lambda]]

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
