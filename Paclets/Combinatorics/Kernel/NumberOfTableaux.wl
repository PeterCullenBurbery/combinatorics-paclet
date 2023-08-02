(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`Combinatorics`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`Combinatorics`NumberOfTableaux;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

NumberOfTableaux // ClearAll

NumberOfTableaux::usage = "NumberOfTableaux[t] returns the number of Young tableaux with shape t, where the shape is a decreasing integer partition.\nNumberOfTableaux[n] returns the total number of Young tableaux for all decreasing integer partitions of n.";

NumberOfTableaux[{}] :=
    1;

NumberOfTableaux[s_List] :=
    With[{transpose = ConjugatePartition[s]},
        (Total[s]!) / Product[transpose[[col]] - row + s[[row]] - col
             + 1, {row, Length[s]}, {col, s[[row]]}]
    ];

NumberOfTableaux[n_Integer] :=
    Total[Map[NumberOfTableaux, IntegerPartitions[n]]];

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
