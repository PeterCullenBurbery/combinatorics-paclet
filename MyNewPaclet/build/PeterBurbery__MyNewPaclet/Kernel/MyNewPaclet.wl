(* ::Package:: *)

BeginPackage["PeterBurbery`MyNewPaclet`"];

(* Declare your packages public symbols here. *)

SubsetIndex;

Begin["`Private`"];

(* Define your public and private symbols here. *)

SubsetIndex[
   subset_List] := (Total[
     MapIndexed[Binomial[#1, #2[[1]]] &, subset]] + 1);;

End[]; (* End `Private` *)

EndPackage[];
