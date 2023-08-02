(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`Combinatorics`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`Combinatorics`TupleIndex;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

TupleIndex // ClearAll

TupleIndex::usage = "TupleIndex[tuple] returns the index of tuple as it would appear in a list of all integer tuples of the same length, sorted by the maximal element.";

TupleIndex[tuple_List] :=
    Module[{run, max, len, first, div, grow, switch, index},
        run = {};
        max = Max[tuple];
        If[max == 0,
            index = 1
            ,
            len = Length[tuple];
            first = Position[tuple, max][[1, 1]];
            div = Table[(max + 1) ^ n - (max) ^ n, {n, len - 1, 0, -1
                }];
            index = max^len + 1 + FromDigits[Take[tuple, {first + 1, 
                len}], max + 1] + Drop[tuple, {first + 1, len}] . Take[div, first]
        ];
        index
    ];

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
