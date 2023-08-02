(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`Combinatorics`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`Combinatorics`LucasNumberU1;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


LucasNumberU1//ClearAll

SetAttributes[LucasNumberU1,{NumericFunction,Listable}]

LucasNumberU1::usage="LucasNumberU1[n, p, q] calculates the term of the Lucas sequence of the first kind U_n(p, q).";

LucasNumberU1[0,p_,q_]:=0;

LucasNumberU1[1,p_,q_]:=1;

LucasNumberU1[n_,p_,q_]/;n>1:=LucasNumberU1[n,p,q]=p LucasNumberU1[n-1,p,q]-q LucasNumberU1[n-2,p,q]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
