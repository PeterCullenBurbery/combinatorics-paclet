(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`CombinatoricsPaclet`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`CombinatoricsPaclet`FromInversionVector;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


FromInversionVector//ClearAll

FromInversionVector::usage="FromInversionVector[poset] determines if the coordinates in poset are partially ordered.";

FromInversionVector[poset_]:=Module[{sortedlast,sortedfirst,gatherfirst,gatherlast},If[!MatrixQ[poset,IntegerQ],Return[False,Module]];sortedlast=GatherBy[Sort[poset],Last];
sortedfirst=GatherBy[Sort[poset],First];
gatherfirst=GatherBy[Reverse[Flatten[Position[sortedlast,#]&/@poset,1],2],First];gatherlast=GatherBy[Flatten[Position[sortedfirst,#]&/@poset,1],Last];
sortedlast===gatherlast&&sortedfirst===gatherfirst ]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
