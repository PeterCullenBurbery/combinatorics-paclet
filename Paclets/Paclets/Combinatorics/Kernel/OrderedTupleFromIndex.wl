(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`Combinatorics`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`Combinatorics`OrderedTupleFromIndex;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

OrderedTupleFromIndex // ClearAll

OrderedTupleFromIndex::usage = "OrderedTupleFromIndex[index, len] returns an ordered tuple of length len with given index.";

OrderedTupleFromIndex[index_Integer?IntegerQ, len_Integer?IntegerQ] :=
    Module[{tuple, total, x},
        tuple = Table[0, {len}];
        total = index;
        Do[
            tuple[[in]] = Ceiling[x /. Flatten[NSolve[{Product[(x - n
                 + 1) / n, {n, 1, in}] == total, x > 0}, x]]] - 1;
            total = total - Binomial[tuple[[in]], in]
            ,
            {in, len, 1, -1}
        ];
        tuple - Range[0, len - 1]
    ];

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
