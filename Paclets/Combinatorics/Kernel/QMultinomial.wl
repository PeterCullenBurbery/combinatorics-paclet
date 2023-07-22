(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`Combinatorics`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`Combinatorics`QMultinomial;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


QMultinomial // ClearAll

SetAttributes[QMultinomial, {NumericFunction, Listable}]

QMultinomial::usage = "QMultinomial[n1, n2, n3, \[Ellipsis], q] gives the q-multinomial coefficient for n1, n2, n3 that approaches (n1+n2+\[Ellipsis])!/(n1!n2!\[Ellipsis]) as q goes to 1.";

QMultinomial[numbers__, q_] :=
    Module[{uniqueVariables, originalInputList, replacementRules, normalMultinomial,
         qGammaApplied},
        originalInputList = {numbers};
        uniqueVariables = {};
        Do[AppendTo[uniqueVariables, Unique["unique"]], Length[originalInputList
            ]];
        normalMultinomial = FunctionExpand[Multinomial @@ uniqueVariables
            ];
        replacementRules = Thread[uniqueVariables -> originalInputList
            ];
        qGammaApplied = normalMultinomial /. {Gamma[x_] :> QGamma[x, 
            q]};
        qGammaApplied /. replacementRules
    ]



(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
