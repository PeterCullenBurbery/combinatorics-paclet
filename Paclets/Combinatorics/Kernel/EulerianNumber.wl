(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`Combinatorics`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`Combinatorics`EulerianNumber;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

EulerianNumber // ClearAll

SetAttributes[EulerianNumber, {Listable, NumericFunction}]

EulerianNumber::usage = "EulerianNumber[n, k] gives the number of permutations of the numbers 1 to n in which exactly k elements are greater than the previous element (permutations with k \"ascents\")";

(*This definition is based on the ResourceFunction EulerianNumber from https://resources.wolframcloud.com/FunctionRepository/resources/EulerianNumber/?i=EulerianNumber&searchapi=https%3A%2F%2Fresources.wolframcloud.com%2FFunctionRepository%2Fsearch*)

EulerianNumber[n_, k_] :=
    Module[{x},
        SeriesCoefficient[(1 - x) ^ (n + 1) PolyLog[-n, x], {x, 0, k 
            (*It might fix it to have k-1*)}]
    ]

(*I created the definition below*)

(*EulerianNumber[n_,m_]:=0/;Or@@{m>=n,n===0}

EulerianNumber[n_,m_]/;m===0:=1

EulerianNumber[n_,m_]:=EulerianNumber[n,m]=(n-m)EulerianNumber[n-1,m-1]+(m+1)EulerianNumber[n-1,m]
*)

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
