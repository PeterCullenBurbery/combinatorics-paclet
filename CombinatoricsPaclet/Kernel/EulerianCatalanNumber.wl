(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`CombinatoricsPaclet`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`CombinatoricsPaclet`EulerianCatalanNumber;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


EulerianCatalanNumber // ClearAll

SetAttributes[EulerianCatalanNumber, {NumericFunction, Listable}]

EulerianCatalanNumber::usage = "EulerianCatalanNumber[n] calculates the nth Eulerian Catalan number.";

EulerianCatalanNumber[n_] :=
    1 / (n + 1) PeterBurbery`CombinatoricsPaclet`EulerianNumber[2 n + 1, n]



(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
