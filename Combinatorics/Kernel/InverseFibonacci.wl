(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`CombinatoricsPaclet`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`CombinatoricsPaclet`InverseFibonacci;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

InverseFibonacci // ClearAll

InverseFibonacci::usage = "InverseFibonacci[s] gives the inverse Fibonacci function obtained as the solution for z in s=Fibonacci[z].";

SetAttributes[InverseFibonacci, {Listable, NumericFunction}];

InverseFibonacciIF = NDSolveValue[{Fibonacci'[n[x]] n'[x] == 1, n[1] 
    == 2}, n, {x, 1, 100}];

ansatz[x_Integer] :=
    If[x < 100,
        With[{r = InverseFibonacciIF[x]},
            If[Fibonacci[Round[r]] === x,
                Round[r]
                ,
                SetPrecision[r, 5]
            ]
        ]
        ,
        With[{r = Log[GoldenRatio, x Sqrt[5]]},
            If[Fibonacci[Round[r]] === x,
                Round[r]
                ,
                SetPrecision[r, Min[Floor[Log10[5 Log[Sqrt[5] x] x^2]
                    ], 10]]
            ]
        ]
    ]

ansatz[x_] :=
    If[x < 100,
        SetPrecision[InverseFibonacciIF[x], 5]
        ,
        SetPrecision[Log[GoldenRatio, x Sqrt[5]], Min[Floor[Log10[5 Log[
            Sqrt[5] x] x^2]], 10]]
    ]

InverseFibonacci[x_Real ? (GreaterEqualThan[1])] :=
    N[Root[{Fibonacci[#] - Rationalize[x, 0]&, ansatz[x]}], Precision[
        x]]

InverseFibonacci[x_ ? (GreaterEqualThan[1])] :=
    Root[{Fibonacci[#] - x&, ansatz[x]}]

(* derivative *)

InverseFibonacci /: Derivative[1][InverseFibonacci] = Function @ Evaluate @
     FullSimplify[((Sqrt[5] (1/2 (1 + Sqrt[5])) ^ InverseFibonacci[#]) / 
    ((1/2 (1 + Sqrt[5])) ^ (2 InverseFibonacci[#]) Log[GoldenRatio] + Cos[
    \[Pi] InverseFibonacci[#]] Log[GoldenRatio] + \[Pi] Sin[\[Pi] InverseFibonacci[
    #]]))];

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
