(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`Combinatorics`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`Combinatorics`MultisetCardinality;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

MultisetCardinality // ClearAll;

MultisetCardinality::usage = "MultisetCardinality[m] returns the number of distinct elements in the multiset m.";

MultisetCardinality[m_] :=
    Length[Union[m]];

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
