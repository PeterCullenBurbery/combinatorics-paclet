(* ::Package:: *)

BeginPackage["PeterBurbery`Combinatorics`"]

PeterBurbery`Combinatorics`Phitorial

Begin["`Private`"]

Phitorial//ClearAll

SetAttributes[Phitorial,{Listable}]

Phitorial::usage="Phitorial[n] computes the phitorial of the integer n.";

Phitorial[n_?IntegerQ]:=n^EulerPhi[n]*Times@@((Factorial[#]/#^#)^MoebiusMu[n/#]&/@Divisors[n])


End[]

EndPackage[]


