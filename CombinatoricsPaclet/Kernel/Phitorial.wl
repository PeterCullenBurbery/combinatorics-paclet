(* ::Package:: *)

BeginPackage["PeterBurbery`CombinatoricsPaclet`"]

PeterBurbery`CombinatoricsPaclet`Phitorial

Begin["`Private`"]

Phitorial//ClearAll

SetAttributes[Phitorial,{Listable}]

Phitorial[n_?IntegerQ]:=n^EulerPhi[n]*Times@@((Factorial[#]/#^#)^MoebiusMu[n/#]&/@Divisors[n])


End[]

EndPackage[]




