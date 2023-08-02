(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`Combinatorics`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`Combinatorics`FibonacciEncode;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


FibonacciEncode // ClearAll

FibonacciEncode::usage="FibonacciEncode[n] gives the nth FibonacciEncode number.\nFibonacciEncode[{n}] gives a list of FibonacciEncode numbers less than or equal to n.";

SetAttributes[FibonacciEncode, {NumericFunction}]

nextFibonacciEncode[x_]:=With[{y=BitNot[BitShiftRight[x]]},BitAnd[x-y,y]]

FibonacciEncode[0]=0;
FibonacciEncode[n_Integer?Positive]:=FibonacciEncode[n]=nextFibonacciEncode[FibonacciEncode[n-1]]
 
FibonacciEncode[{n_Integer?Positive}]:=With[{r=Range[n]},Pick[r,BitAnd[r,2 r],0]]
(* (* slower, but uses less memory *)
FibonacciEncode[{n_Integer?Positive}]:=NestWhileList[nextFibonacciEncode,1,#<=n&,1,Infinity,-1]*)


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
