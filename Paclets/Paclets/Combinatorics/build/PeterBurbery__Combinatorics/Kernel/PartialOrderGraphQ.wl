(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`Combinatorics`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`Combinatorics`PartialOrderGraphQ;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


ClearAll[AntiSymmetricGraphQ,PartialOrderGraphQ,RemoveSelfLoops]

PartialOrderGraphQ::usage="PartialOrderGraphQ[g] yields True if the binary relation defined by edges of the graph g is a partial order and False otherwise.";
RemoveSelfLoops[g_Graph]:=Graph[DeleteCases[EdgeList[g],_[v_,v_]]]

AntiSymmetricGraphQ[g_Graph]:=Module[{e=List@@@EdgeList[RemoveSelfLoops[g]]},Apply[And,Map[!MemberQ[e,Reverse[#]]&,e]]]/;!UndirectedGraphQ[g]

AntiSymmetricGraphQ[g_Graph]:=EdgeCount[RemoveSelfLoops[g]]==0

PartialOrderGraphQ[g_Graph]:=False/;VertexCount[g]==0

PartialOrderGraphQ[g_Graph]:=ReflexiveGraphQ[g]&&AntiSymmetricGraphQ[g]&&TransitiveGraphQ[g]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
