(* ::Package:: *)

BeginPackage["PeterBurbery`CombinatoricsPaclet`"];

(* Declare your packages public symbols here. *)

PermutationFromIndex;

Begin["`Private`"];

(* Define your public and private symbols here. *)

PermutationFromIndex[index_Integer,length_Integer] := PermutationFromLehmerCode[LehmerCodeFromIndex[index,length]];
LehmerCodeFromIndex[index_Integer,length_Integer] := Reverse[Last/@FoldList[{Floor[#1[[1]]/#2],Mod[#1[[1]],#2]}&,{index-1,0},Range[2,length]]];
PermutationFromLehmerCode[lehmercode_List] := Module[{vals, result},
vals = Range[Length[lehmercode]];
result = Table[0, {Length[lehmercode]}];
Do[
result[[n]] = vals[[lehmercode[[n]]+1]];
vals = Drop[vals,{lehmercode[[n]]+1}],
{n,1,Length[lehmercode]}];
result];
End[]; (* End `Private` *)

EndPackage[];
