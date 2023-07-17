(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`CombinatoricsPaclet`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`CombinatoricsPaclet`PosetToTableau;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

PosetToTableau // ClearAll

PosetToTableau::usage = "PosetToTableau[p] gives the number of rows involved in the Durfee square of partition p, the side of the largest-sized square contained within the Ferrers diagram of p.";

PosetToTableau[{}] = 0

PosetToTableau[s_List] :=
    Module[{i, max = 1},
            Do[
                If[s[[i]] >= i,
                    max = i
                ]
                ,
                {i, 2, Min[Length[s], First[s]]}
            ];
            max
        ] /; PeterBurbery`CombinatoricsPaclet`IntegerPartitionQ[s]

(* (* slower, but uses less memory *)
PosetToTableau[{n_Integer?Positive}]:=NestWhileList[nextPosetToTableau,1,#<=n&,1,Infinity,-1]*)

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
