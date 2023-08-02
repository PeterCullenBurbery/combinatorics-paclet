(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`Combinatorics`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`Combinatorics`HuffmanEncode;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

HuffmanEncode//ClearAll

HuffmanEncode::usage="HuffmanEncode[string] gives an optimal binary Huffman encoding for string.";

HuffmanEncode[d_] /; MatchQ[d, {__String}] := 
 Module[{chars = Union[d], code},
  code = 
   HuffmanCodeWords[(Count[d, #1] & /@ chars)/
     Length[d]];
  <|"Symbols" -> chars, "CodeWords" -> code, 
   "Encoding" -> Flatten[d /. MapThread[Rule, {chars, code}]]|>]
 
HuffmanEncode[s_String] := HuffmanEncode[Characters[s]]

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
