(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`Combinatorics`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`Combinatorics`InverseGrayCode;



Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


InverseGrayCode // ClearAll

InverseGrayCode::usage="InverseGrayCode[{b1,b2,\[Ellipsis]}] gives the integer corresponding to the Gray code represented by the bits bi.";

InverseGrayCode[v:{(0|1)..}]:=iInverseGrayCode[v]

iInverseGrayCode[v_]:=If[Length[v]<1.2*2^16(* empirically found threshold *),
iInverseGrayCodeSmall[v],
iInverseGrayCodeBig[v]]

iInverseGrayCodeSmall[v_]:=
With[{n=FromDigits[v,2]},Fold[BitXor,n,BitShiftRight[n,Range[Length[v]-1]]]]

iInverseGrayCodeBig[v_]:=Module[{n=FromDigits[v,2],res},
res=n;
Do[n=BitShiftRight[n];
res=BitXor[res,n],
{Length[v]-1}];
res]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
