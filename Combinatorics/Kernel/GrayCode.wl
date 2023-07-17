(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`CombinatoricsPaclet`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`CombinatoricsPaclet`GrayCode;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


GrayCode // ClearAll

Attributes[GrayCode] = { Listable };

GrayCode::usage="GrayCode[n] gives the Gray code of the integer n.";

GrayCode[ n_Integer?(IntegerQ [#]&& NonNegative[#]&) ] := IntegerDigits[ BitXor[ n, BitShiftRight[ n, 1 ]], 2 ]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
