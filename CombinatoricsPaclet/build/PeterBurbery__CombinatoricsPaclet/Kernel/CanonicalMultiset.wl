(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`CombinatoricsPaclet`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`CombinatoricsPaclet`CanonicalMultiset;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


CanonicalMultiset // ClearAll

CanonicalMultiset::usage = 
  "CanonicalMultiset[multiset] replaces all elements in multiset with \
integers.";

CanonicalMultiset[multiset_] := 
 Module[{multisetSupport}, multisetSupport = Union[multiset]; 
  multiset /. 
   Thread[multisetSupport -> Range[Length[multisetSupport]]]]



(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
