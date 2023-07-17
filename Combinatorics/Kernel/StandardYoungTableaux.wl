(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`CombinatoricsPaclet`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`CombinatoricsPaclet`StandardYoungTableaux;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


standardTableauxAux//ClearAll

standardTableauxAux[incompleteList_,idxToFill_,affectedByList_,minIndTable_,maxIndTable_]:=Module[{aux,minIndTables,possibilities,possibleFillings,result},
If[Abs[maxIndTable-minIndTable]=!=maxIndTable-minIndTable,Return[{},Module]];
possibleFillings=Complement[Range[minIndTable[[idxToFill]],maxIndTable[[idxToFill]]],Take[incompleteList,idxToFill-1]];
possibilities=Table[aux=incompleteList;aux[[idxToFill]]=i;aux,{i,possibleFillings}];
minIndTables=Table[aux=minIndTable;aux[[affectedByList[[idxToFill]]]]=Table[Max[aux[[el]],i+1],{el,affectedByList[[idxToFill]]}];aux,
{i,possibleFillings}];
If[idxToFill==Length[incompleteList],
possibilities,
result=Table[standardTableauxAux[possibilities[[i]],idxToFill+1,affectedByList,minIndTables[[i]],maxIndTable],{i,Length[possibleFillings]}];
Flatten[result,1]]]

StandardYoungTableaux//ClearAll

StandardYoungTableaux::usage="StandardYoungTableaux[p] generates a list of all standard Young tableaux with shape corresponding to the integer partition p.";

StandardYoungTableaux[partition_]/;IntegerPartitionQ[partition]:=Module[{n=Total[partition],affectedByList,canonicalTableaux,canonicalTableauxT,minIndTable,maxIndTable,partitionT},
partitionT=ResourceFunction["ConjugatePartition"][partition];
canonicalTableaux=Internal`PartitionRagged[Range[n],partition];
canonicalTableauxT=Flatten[canonicalTableaux,{{2},{1}}];
affectedByList=ConstantArray[{},n];
Do[AppendTo[affectedByList[[canonicalTableaux[[i,j-1]]]],canonicalTableaux[[i,j]]],{i,Length[partition]},{j,2,partition[[i]]}];
Do[AppendTo[affectedByList[[canonicalTableauxT[[i,j-1]]]],canonicalTableauxT[[i,j]]],{i,Length[partitionT]},{j,2,partitionT[[i]]}];
minIndTable=ConstantArray[1,n];
maxIndTable=Flatten[Table[Total[Take[partition,i-1]]+Total[Take[partitionT,j-1]]-(i-1)(j-1)+1,{i,Length[partition]},{j,partition[[i]]}]];
Internal`PartitionRagged[#,partition]&/@standardTableauxAux[ConstantArray[0,n],1,affectedByList,minIndTable,maxIndTable]]


(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
