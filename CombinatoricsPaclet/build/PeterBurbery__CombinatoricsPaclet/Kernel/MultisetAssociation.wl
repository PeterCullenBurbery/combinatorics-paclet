(* ::Package:: *)

BeginPackage["PeterBurbery`CombinatoricsPaclet`"]

PeterBurbery`CombinatoricsPaclet`MultisetAssociation

Begin["`Private`"]

MultisetAssociation // ClearAll

MultisetAssociation::usage = "MultisetAssociation[multiset] returns an association for multiset.";

MultisetAssociation[multiset_]:=Association[MapIndexed[Identity@@#2->#1&,multiset]]

End[]

EndPackage[]




