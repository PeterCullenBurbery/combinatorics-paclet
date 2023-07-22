(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`Combinatorics`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`Combinatorics`FrobeniusSymbolFromPartition;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

FrobeniusSymbolFromPartition // ClearAll

FrobeniusSymbolFromPartition::usage = "FrobeniusSymbolFromPartition[p] gives a pair of lists that count dots in the rows and columns relative to the diagonal of the Durfee square in the Ferrers diagram of the partition p.";

FrobeniusSymbolFromPartition[x_] :=
    Module[{d = DurfeeSquare[x]},
            {Take[x, d] - Range[d], Take[ConjugatePartition[x], d] - 
                Range[d]}
        ] /; IntegerPartitionQ[x]

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
