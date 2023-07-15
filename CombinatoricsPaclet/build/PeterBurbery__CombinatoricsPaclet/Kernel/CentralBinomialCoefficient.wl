(* ::Package:: *)

BeginPackage["PeterBurbery`CombinatoricsPaclet`"]

PeterBurbery`CombinatoricsPaclet`CentralBinomialCoefficient

Begin["`Private`"]

CentralBinomialCoefficient // ClearAll

SetAttributes[CentralBinomialCoefficient, {NumericFunction, Listable}
    ]

CentralBinomialCoefficient::usage = "CentralBinomialCoefficient[n] calculates the nth central binomial coefficient.";

CentralBinomialCoefficient[n_] :=
    Binomial[2 n, n]

End[]

EndPackage[]



