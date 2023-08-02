(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`Combinatorics`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`Combinatorics`TupleFromIndex;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

TupleFromIndex // ClearAll

TupleFromIndex::usage = "TupleFromIndex[index, k] returns index from the list of k tuples sorted by maximal element.";

TupleFromIndex[index_Integer?IntegerQ, len_Integer?IntegerQ] :=
    Module[{max, div, left, tuple, switch},
        tuple = {};
        max = Floor[N[(index - 1) ^ (1 / len), 300]];
        div = Table[(max + 1) ^ n - (max) ^ n, {n, len - 1, 1, -1}];
        left = index - (max) ^ len - 1;
        switch = False;
        If[index == 1,
            tuple = Table[0, {len}]
            ,
            Do[
                If[switch == False,
                    If[Floor[(left) / div[[k]]] >= max,
                        switch = True;
                        tuple = Append[tuple, max]
                        ,
                        tuple = Append[tuple, Floor[(left) / div[[k]]
                            ]];
                    ];
                    left = left - tuple[[k]] div[[k]];
                ]
                ,
                {k, 1, len - 1}
            ];
            If[switch == False,
                tuple = Append[tuple, max]
                ,
                tuple = Join[tuple, IntegerDigits[left, max + 1, len 
                    - Length[tuple]]]
            ]
        ];
        tuple
    ]

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
