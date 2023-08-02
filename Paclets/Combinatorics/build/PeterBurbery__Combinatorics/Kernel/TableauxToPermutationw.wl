(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`Combinatorics`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`Combinatorics`TableauxToPermutation;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


TableauxToPermutation // ClearAll

SetAttributes[TableauxToPermutation, {NumericFunction}]

TableauxToPermutation::usage = "TableauxToPermutation[t1, t2] returns the permutation list corresponding to the Young tableaux t1 and t2.";

TableauxToPermutation[p1_, q1_] /; Map[Length, p1] === Map[Length, q1
    ] :=
    Module[{p = p1, q = q1, row, firstrow, col, item},
        Reverse[
            Table[
                firstrow = First[p];
                row = Position[q, Max[q]][[1, 1]];
                item = Last[p[[row]]];
                col = Length[p[[row]]];
                If[col == 1,
                    p = Most[p]
                    ,
                    p[[row]] = Most[p[[row]]]
                ];
                Do[
                    While[p[[rowi, col]] <= item && Length[p[[rowi]]]
                         > col, col++];
                    If[item < p[[rowi, col]],
                        col--
                    ];
                    {item, p[[rowi, col]]} = {p[[rowi, col]], item}
                    ,
                    {rowi, row - 1, 1, -1}
                ];
                q[[row]] = Most[q[[row]]];
                If[p === {},
                    First[firstrow]
                    ,
                    First[Complement[firstrow, First[p]]]
                ]
                ,
                {Total[Map[Length, p1]]}
            ]
        ]
    ]



(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
