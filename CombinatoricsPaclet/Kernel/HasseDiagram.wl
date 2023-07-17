(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`CombinatoricsPaclet`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`CombinatoricsPaclet`PosetQ;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

PosetQ // ClearAll

PosetQ::usage = "PosetQ[p] gives the number of rows involved in the Durfee square of partition p, the side of the largest-sized square contained within the Ferrers diagram of p.";

PosetQ[{}] = 0

PosetQ[s_List] :=
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
PosetQ[{n_Integer?Positive}]:=NestWhileList[nextPosetQ,1,#<=n&,1,Infinity,-1]*)

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
