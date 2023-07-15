(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`CombinatoricsPaclet`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`CombinatoricsPaclet`HuffmanCodeWords;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


HuffmanCodeWords // ClearAll

HuffmanCodeWords::usage="HuffmanCodeWords[list] gives optimal binary Huffman code words corresponding to probabilities in list.";

HuffmanCodeWords[p_ /; VectorQ[p, NumericQ]] := 
 Sort[Flatten[
     MapIndexed[Rule, 
      FixedPoint[
        Replace[Sort[#1], {{p0_, i0_}, {p1_, i1_}, 
            pi___} :> {{p0 + p1, {i0, i1}}, pi}] &, 
        MapIndexed[List, Normalize[p, Total]]][[1, 2]], {-1}]]][[
   All, -1, ;; -2]] - 1

(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
