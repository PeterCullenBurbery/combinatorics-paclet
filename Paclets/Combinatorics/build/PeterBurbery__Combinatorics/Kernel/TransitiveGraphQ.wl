(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`Combinatorics`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`Combinatorics`TransitiveGraphQ;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


ClearAll[TransitiveGraphQ,IdenticalGraphsQ,TransitiveClosure]

TransitiveGraphQ::usage="TransitiveGraphQ[g] yields True if the graph g is transitive and False otherwise.";

IdenticalGraphsQ[g__]:=True/;AllTrue[{g},EmptyGraphQ]&&SameQ@@(VertexList/@{g})
IdenticalGraphsQ[g__]:=False/;!SameQ@@(UndirectedGraphQ/@{g})

IdenticalGraphsQ[g__]:=SameQ@@(List@@@(Sort[If[UndirectedGraphQ[#],Sort,Identity]/@EdgeList[#]]&)/@{g}\.00)

TransitiveGraphQ[g_Graph]:=IdenticalGraphsQ[g,TransitiveClosure[g]]

TransitiveClosure[g_Graph]:=g/;EmptyGraphQ[g]

TransitiveClosure[g_Graph]:=AdjacencyGraph[VertexList[g],TC[Normal@AdjacencyMatrix[g]],DirectedEdges->DirectedGraphQ[g]]

TC=Compile[{{e,_Integer,2}},Module[{ne=e,n=Length[e],i,j,k},Do[If[ne[[j,i]]!=0,Do[If[ne[[i,k]]!=0,ne[[j,k]]=1],{k,n}]],{i,n},{j,n}];
ne]];



(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
