(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`CombinatoricsPaclet`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`CombinatoricsPaclet`HuffmanDecode;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

HuffmanDecode // ClearAll

HuffmanDecode::usage = "HuffmanDecode[assoc] returns the decoding of an association assoc representing a Huffman encoding as a string.";

HuffmanDecode[assoc_?AssociationQ] :=
    Module[{chars, cList, encoding, words},
        {chars, encoding, words} = Lookup[assoc, {"Symbols", "Encoding",
             "CodeWords"}];
        (
                cList = chars[[First[{{}, encoding} //. MapIndexed[{{
                    r___}, Flatten[{#1, s___}]} :> {{r, #2[[1]]}, {s}}&, words]]]];
                StringJoin[cList] /; MatchQ[cList, {__String}]
            ) /; FreeQ[{chars, encoding, words}, _Missing] && chars ===
                 DeleteDuplicates[chars] && Length[chars] == Length[words] && MatchQ[
                words, {{(0 | 1)..}..}] && MatchQ[encoding, {(0 | 1)..}]
    ]

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
