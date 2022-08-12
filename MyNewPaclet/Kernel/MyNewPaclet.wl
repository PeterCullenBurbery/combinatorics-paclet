(* ::Package:: *)

BeginPackage["PeterBurbery`MyNewPaclet`"];

(* Declare your packages public symbols here. *)

SubsetIndex;
SubsetFromIndex;
Begin["`Private`"];

(* Define your public and private symbols here. *)

SubsetIndex[
   subset_List] := (Total[
     MapIndexed[Binomial[#1, #2[[1]]] &, subset]] + 1);
SubsetFromIndex[index_Integer,len_Integer]:= Module[{subset,total, x},
subset=Table[0,{len}];
total=index;
Do[subset[[in]]=Ceiling[x/.Flatten[
NSolve[{Product[(x-n+1)/n,{n,1,in}]==total,x>0},x]]]-1;
total=total-Binomial[subset[[in]],in],
{in,len,1,-1}];
subset];
End[]; (* End `Private` *)

EndPackage[];
