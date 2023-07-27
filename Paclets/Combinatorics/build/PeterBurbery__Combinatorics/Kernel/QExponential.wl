(* ::Package:: *)

(* ::Section:: *)

(*Package Header*)

BeginPackage["PeterBurbery`Combinatorics`"];

(* ::Text:: *)

(*Declare your public symbols here:*)

PeterBurbery`Combinatorics`QExponential;

Begin["`Private`"];

(* ::Section:: *)

(*Definitions*)

(* ::Text:: *)

(*Define your public and private symbols here:*)

QExponential // ClearAll

SetAttributes[QExponential, {Listable, NumericFunction}]

QExponential::usage = "QExponential[z, q] gives the q-exponential of z, e_q(z)";

QExponential[z_, q_, Optional[precision_, $MachinePrecision]] :=
    Sum[z^n / QFactorial[n, q], {n, 0, Infinity}] /. {x_ /; !NumericQ[
        x] :> N[x, precision]}

(* QExponential[z_, q_, {precision_, accuracy_}] :=
    Sum[z^n / QFactorial[n, q], {n, 0, Infinity}] /. {x_ /; !NumericQ[
        x] :> N[x, {precision, accuracy}]} *)

(* ::Section::Closed:: *)

(*Package Footer*)

End[];

EndPackage[];
