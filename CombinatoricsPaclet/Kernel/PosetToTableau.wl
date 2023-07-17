(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`CombinatoricsPaclet`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`CombinatoricsPaclet`PosetToTableau;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


PosetToTableau//ClearAll

PosetToTableau::usage="PosetToTableau[poset] converts the partially ordered set of coordinates poset into a Young tableau.";

PosetToTableau[poset_]/;PosetQ[poset]:=Module[{rp=Reverse[poset,2],ord},
ord=Ordering[rp];
TakeList[ord,Length/@SplitBy[rp[[ord]],First]]]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
