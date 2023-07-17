(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`CombinatoricsPaclet`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`CombinatoricsPaclet`TableauToPoset;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

TableauToPoset // ClearAll

TableauToPoset::usage = "TableauToPoset[p] gives the number of rows involved in the Durfee square of partition p, the side of the largest-sized square contained within the Ferrers diagram of p.";

TableauToPoset[{}] = 0

TableauToPoset[s_List] :=
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
TableauToPoset[{n_Integer?Positive}]:=NestWhileList[nextTableauToPoset,1,#<=n&,1,Infinity,-1]*)

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
