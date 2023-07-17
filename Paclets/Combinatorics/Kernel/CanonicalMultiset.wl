(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`Combinatorics`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`Combinatorics`CanonicalMultiset;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

PeterBurbery`Combinatorics`CanonicalMultiset //
   ClearAll

PeterBurbery`Combinatorics`CanonicalMultiset::usage = "CanonicalMultiset[multiset] replaces all elements in multiset with integers.";

PeterBurbery`Combinatorics`CanonicalMultiset[multiset_] :=
  Module[{multisetSupport},
    multisetSupport = Union[multiset];
    multiset /. Thread[multisetSupport -> Range[Length[multisetSupport
      ]]]
  ]

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
