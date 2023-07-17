(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`CombinatoricsPaclet`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`CombinatoricsPaclet`Fibbinary;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


Fibbinary // ClearAll

Fibbinary::usage="Fibbinary[n] gives the nth fibbinary number.\nFibbinary[{n}] gives a list of fibbinary numbers less than or equal to n.";

SetAttributes[Fibbinary, {NumericFunction}]

nextFibbinary[x_]:=With[{y=BitNot[BitShiftRight[x]]},BitAnd[x-y,y]]

Fibbinary[0]=0;
Fibbinary[n_Integer?Positive]:=Fibbinary[n]=nextFibbinary[Fibbinary[n-1]]
 
Fibbinary[{n_Integer?Positive}]:=With[{r=Range[n]},Pick[r,BitAnd[r,2 r],0]]
(* (* slower, but uses less memory *)
Fibbinary[{n_Integer?Positive}]:=NestWhileList[nextFibbinary,1,#<=n&,1,Infinity,-1]*)


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
