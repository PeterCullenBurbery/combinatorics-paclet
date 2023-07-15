(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`CombinatoricsPaclet`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`CombinatoricsPaclet`FrobeniusSymbolFromPartition;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


FrobeniusSymbolFromPartition // ClearAll

FrobeniusSymbolFromPartition::usage="FrobeniusSymbolFromPartition[n] gives the nth FrobeniusSymbolFromPartition number.\nFrobeniusSymbolFromPartition[{n}] gives a list of FrobeniusSymbolFromPartition numbers less than or equal to n.";

SetAttributes[FrobeniusSymbolFromPartition, {NumericFunction}]

nextFrobeniusSymbolFromPartition[x_]:=With[{y=BitNot[BitShiftRight[x]]},BitAnd[x-y,y]]

FrobeniusSymbolFromPartition[0]=0;
FrobeniusSymbolFromPartition[n_Integer?Positive]:=FrobeniusSymbolFromPartition[n]=nextFrobeniusSymbolFromPartition[FrobeniusSymbolFromPartition[n-1]]
 
FrobeniusSymbolFromPartition[{n_Integer?Positive}]:=With[{r=Range[n]},Pick[r,BitAnd[r,2 r],0]]
(* (* slower, but uses less memory *)
FrobeniusSymbolFromPartition[{n_Integer?Positive}]:=NestWhileList[nextFrobeniusSymbolFromPartition,1,#<=n&,1,Infinity,-1]*)


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
