(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`CombinatoricsPaclet`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`CombinatoricsPaclet`EulerianNumberOfTheSecondKind;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


EulerianNumberOfTheSecondKind//ClearAll

SetAttributes[EulerianNumberOfTheSecondKind,{Listable,NumericFunction}]

EulerianNumberOfTheSecondKind::usage="EulerianNumberOfTheSecondKind[n, m]number of all such permutations of the multiset where there are two of every element with exactly km ascents.";

EulerianNumberOfTheSecondKind[n_,m_]:=0/;Or@@{m>=n,n===0}

EulerianNumberOfTheSecondKind[n_,m_]/;m===0:=1

EulerianNumberOfTheSecondKind[n_,k_]:=EulerianNumberOfTheSecondKind=(2n-k-1)EulerianNumberOfTheSecondKind[n-1,k-1]+(k+1)EulerianNumberOfTheSecondKind[n-1,k]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
