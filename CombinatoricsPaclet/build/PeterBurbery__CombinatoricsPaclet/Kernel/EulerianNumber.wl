(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`CombinatoricsPaclet`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`CombinatoricsPaclet`EulerianNumber;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


EulerianNumber//ClearAll

SetAttributes[EulerianNumber,{Listable,NumericFunction}]

EulerianNumber::usage="EulerianNumber[n, k] gives the number of permutations of the numbers 1 to n in which exactly k elements are greater than the previous element (permutations with k \"ascents\")";

EulerianNumber[n_,m_]:=0/;Or@@{m>=n,n===0}

EulerianNumber[n_,m_]/;m===0:=1

EulerianNumber[n_,m_]:=EulerianNumber[n,m]=(n-m)EulerianNumber[n-1,m-1]+(m+1)EulerianNumber[n-1,m]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
