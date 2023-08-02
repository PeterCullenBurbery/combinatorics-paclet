(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`Combinatorics`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`Combinatorics`OrderedTupleIndex;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

OrderedTupleIndex // ClearAll

OrderedTupleIndex::usage = "OrderedTupleIndex[tuple] gives the index of ordered tuple.";

OrderedTupleIndex[tuple_List?ListQ] :=
    (Total[MapIndexed[Binomial[#1, #2[[1]]]&, tuple + Range[0, Length[
        tuple] - 1]]] + 1);

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
