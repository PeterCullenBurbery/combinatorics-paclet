(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`CombinatoricsPaclet`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`CombinatoricsPaclet`FromInversionVector;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


FromInversionVector//ClearAll

FromInversionVector::usage="FromInversionVector[vect] constructs the permutation list corresponding to the inversion vector vect.";

FromInversionVector[vec_?(InversionVectorQ)]:=Module[{n=Length[vec],i,p},
p={n};Do[p=Insert[p,i,vec[[i]]+1],{i,n-1,1,-1}];p]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
