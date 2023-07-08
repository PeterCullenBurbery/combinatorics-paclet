(* ::Package:: *)

BeginPackage["PeterBurbery`CombinatoricsPaclet`"]

PeterBurbery`CombinatoricsPaclet`PermutationFromLehmerCode

Begin["`Private`"]

PermutationFromLehmerCode // ClearAll

PermutationFromLehmerCode[lehmercode_List?ListQ] :=
   Module[{vals, result},
      vals = Range[Length[lehmercode]];
      result = Table[0, {Length[lehmercode]}];
      Do[
         result[[n]] = vals[[lehmercode[[n]] + 1]];
         vals = Drop[vals, {lehmercode[[n]] + 1}]
         ,
         {n, 1, Length[lehmercode]}
      ];
      result
   ];

End[]

EndPackage[]
