(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`Combinatorics`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`Combinatorics`FerrersDiagram;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


FerrersDiagram//ClearAll

FerrersDiagram::usage="FerrersDiagram[p] gives a ragged array of dots, with the number of dots in each row equal to a corresponding part of the integer partition p.";

FerrersDiagram@p_:=Grid[Table["\[FilledCircle]",#]&/@p]/;IntegerPartitionQ@p


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
