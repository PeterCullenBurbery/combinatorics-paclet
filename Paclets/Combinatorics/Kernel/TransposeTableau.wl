(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`Combinatorics`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`Combinatorics`TransposeTableau;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


TransposeTableau // ClearAll

TransposeTableau::usage = 
  "TransposeTableau[t] returns the transpose of the Young tableau t.";

TransposeTableau[tb_List]:=Flatten[tb,{{2},{1}}]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
