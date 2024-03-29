(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`Combinatorics`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`Combinatorics`PosetQ;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


PosetQ//ClearAll

PosetQ::usage="PosetQ[poset] determines if the coordinates in poset are partially ordered.";

PosetQ[poset_]:=Module[{sortedlast,sortedfirst,gatherfirst,gatherlast},If[!MatrixQ[poset,IntegerQ],Return[False,Module]];sortedlast=GatherBy[Sort[poset],Last];
sortedfirst=GatherBy[Sort[poset],First];
gatherfirst=GatherBy[Reverse[Flatten[Position[sortedlast,#]&/@poset,1],2],First];gatherlast=GatherBy[Flatten[Position[sortedfirst,#]&/@poset,1],Last];
sortedlast===gatherlast&&sortedfirst===gatherfirst ]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
