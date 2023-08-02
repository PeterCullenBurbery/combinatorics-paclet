(* ::Package:: *)

BeginPackage["PeterBurbery`Combinatorics`"]

PeterBurbery`Combinatorics`PermutationToTableaux

Begin["`Private`"]

PermutationToTableaux//ClearAll

PermutationToTableaux::usage="PermutationToTableaux[p] returns the two Young tableaux corresponding to the permutation p.";

PermutationToTableaux[{}]:={{},{}};
PermutationToTableaux[c_?PermutationCyclesQ,rest___]:=With[{tmp=PermutationList[c,rest]},PermutationToTableaux[tmp]/;PermutationListQ[tmp]];
PermutationToTableaux[p_?PermutationListQ]:=Module[{pt={{p[[1]]}},qt={{1}},r},
Do[{pt,r}=InsertIntoTableau[p[[i]],pt,All];
If[r<=Length[qt],AppendTo[qt[[r]],i],AppendTo[qt,{i}]],{i,2,Length[p]}];
{pt,qt}];

InsertIntoTableau//ClearAll

InsertIntoTableau[e_Integer,t_]:=First[InsertIntoTableau[e,t,All]];
InsertIntoTableau[e_Integer,{},All]:={{{e}},1};
InsertIntoTableau[e_Integer,t1_,All]:=Module[{item=e,row=0,col,t=t1},
While[row<Length[t],row++;
If[Last[t[[row]]]<=item,AppendTo[t[[row]],item];
Return[{t,row},Module]];
col=Ceiling[BinarySearch[t[[row]],item]];
{item,t[[row,col]]}={t[[row,col]],item};];
{Append[t,{item}],row+1}];

BinarySearch::error="The input list is non-numeric.";
BinarySearch[l_?(Length[#]>0&),k_?NumericQ,f_:Identity]:=With[{res=binarysearchchore[l,k,f]},res/;res=!=$Failed];
binarysearchchore[l_,k_,f_]:=Module[{lo=1,mid,hi=Length[l],el},
While[lo<=hi,
If[(el=f[l[[mid=Quotient[lo+hi,2]]]])===k,Return[mid,Module]];
If[!NumericQ[el],(ResourceFunction["ResourceFunctionMessage"][BinarySearch::error];Return[$Failed,Module])];
If[el>k,hi=mid-1,lo=mid+1]];
lo-1/2];


End[]

EndPackage[]
