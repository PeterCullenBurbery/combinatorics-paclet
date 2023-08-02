(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`Combinatorics`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`Combinatorics`SubsetFromIndex;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

SubsetFromIndex // ClearAll

SubsetFromIndex::usage = "SubsetFromIndex[index, len] returns a subset of length len with given index.";

SubsetFromIndex[index_Integer, len_Integer] :=
    Module[{subset, total, x},
        subset = Table[0, {len}];
        total = index;
        Do[
            subset[[in]] = Ceiling[x /. Flatten[NSolve[{Product[(x - 
                n + 1) / n, {n, 1, in}] == total, x > 0}, x]]] - 1;
            total = total - Binomial[subset[[in]], in]
            ,
            {in, len, 1, -1}
        ];
        subset
    ];

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
