(* ::Package:: *)

BeginPackage["PeterBurbery`Combinatorics`"];

(* Declare your packages public symbols here. *)

PermutationFromIndex;
TupleFromIndex;
OrderedTupleFromIndex;
LehmerCodeFromPermutation;
PermutationIndex;
OrderedTupleIndex;
TupleIndex;
SubsetIndex;
SubsetFromIndex;
PermutationToTableaux;
TableauxToPermutation;
Begin["`Private`"];

(* Define your public and private symbols here. *)

PermutationFromIndex[index_Integer,length_Integer] := PermutationFromLehmerCode[LehmerCodeFromIndex[index,length]];
LehmerCodeFromIndex[index_Integer,length_Integer] := Reverse[Last/@FoldList[{Floor[#1[[1]]/#2],Mod[#1[[1]],#2]}&,{index-1,0},Range[2,length]]];
PermutationFromLehmerCode[lehmercode_List] := Module[{vals, result},
vals = Range[Length[lehmercode]];
result = Table[0, {Length[lehmercode]}];
Do[
result[[n]] = vals[[lehmercode[[n]]+1]];
vals = Drop[vals,{lehmercode[[n]]+1}],
{n,1,Length[lehmercode]}];
result];

(*TupleFromIndex*)
TupleFromIndex[index_Integer,len_Integer]:= Module[{max,div,left,tuple, switch},
tuple={};
max=Floor[N[(index-1)^(1/len),300]];
div=Table[(max+1)^n - (max)^n,{n,len-1,1,-1}];
left=index-(max)^len -1;
switch=False;
If[index==1,
tuple=Table[0,{len}],
Do[
If[switch==False,
If[Floor[(left)/div[[k]]]>=max,
switch=True;tuple=Append[tuple,max],
tuple=Append[tuple,Floor[(left)/div[[k]]]];
];
left=left-tuple[[k]] div[[k]];
],{k,1,len-1}];
If[switch==False, 
tuple=Append[tuple,max],
tuple=Join[tuple, IntegerDigits[left,max+1,len-Length[tuple]]]]];
tuple];
OrderedTupleFromIndex[index_Integer,len_Integer]:= Module[{tuple,total, x},
tuple=Table[0,{len}];
total=index;
Do[tuple[[in]]=Ceiling[x/.Flatten[
NSolve[{Product[(x-n+1)/n,{n,1,in}]==total,x>0},x]]]-1;
total=total-Binomial[tuple[[in]],in],
{in,len,1,-1}];
tuple-Range[0,len-1]];
PermutationToTableaux[{}]:={{},{}};
PermutationToTableaux[c_?PermutationCyclesQ,rest___]:=With[{tmp=PermutationList[c,rest]},PermutationToTableaux[tmp]/;PermutationListQ[tmp]];
PermutationToTableaux[p_?PermutationListQ]:=Module[{pt={{p[[1]]}},qt={{1}},r},
Do[{pt,r}=InsertIntoTableau[p[[i]],pt,All];
If[r<=Length[qt],AppendTo[qt[[r]],i],AppendTo[qt,{i}]],{i,2,Length[p]}];
{pt,qt}];


(* InsertIntoTableau[e_Integer,t_?ResourceFunction["TableauQ"]] in version 2 *)
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
(* TableauxToPermutation[p1_?ResourceFunction["TableauQ"], q1_?ResourceFunction["TableauQ"]] in version 2 *)
TableauxToPermutation[p1_,q1_]/;Map[Length,p1]===Map[Length,q1]:=
Module[{p=p1,q=q1,row,firstrow, col,item},
Reverse[Table[firstrow=First[p];
row=Position[q,Max[q]][[1,1]];
item=Last[p[[row]]];
col=Length[p[[row]]];
If[col==1,p=Most[p],p[[row]]=Most[p[[row]]]];
Do[
While[p[[rowi,col]]<=item&&Length[p[[rowi]]]>col,col++];
If[item<p[[rowi,col]],col--];
{item,p[[rowi,col]]}={p[[rowi,col]],item},
{rowi,row-1,1,-1}];
q[[row]]=Most[q[[row]]];
If[p==={},First[firstrow],First[Complement[firstrow,First[p]]]],
{Total[Map[Length,p1]]}]]]


PermutationIndex[perm_List] := LehmerCodeIndex[LehmerCodeFromPermutation[perm]]+1;

LehmerCodeIndex[lehmer_List] := Total[lehmer Reverse[Range[0,Length[lehmer]-1]]!];

LehmerCodeFromPermutation[perm_List] := Flatten[Table[Position[Sort[Drop[perm, n - 1]], perm[[n]]] - 1, {n, 1, Length[perm]}]];

OrderedTupleIndex[tuple_List]:=(Total[MapIndexed[Binomial[#1,#2[[1]]]&,tuple+Range[0,Length[tuple]-1]]]+1);

TupleIndex[tuple_List]:= Module[{run,max,len,first,div,grow, switch,index},
run={};
max=Max[tuple];
If[max==0,
index=1,
len=Length[tuple];
first=Position[tuple,max][[1,1]];
div=Table[(max+1)^n - (max)^n,{n,len-1,0,-1}];
index=max^len+1+FromDigits[Take[tuple,{first+1,len}],max+1]+Drop[tuple,{first+1,len}] . Take[div,first]
];
index];

SubsetFromIndex[index_Integer,len_Integer]:= Module[{subset,total, x},
subset=Table[0,{len}];
total=index;
Do[subset[[in]]=Ceiling[x/.Flatten[
NSolve[{Product[(x-n+1)/n,{n,1,in}]==total,x>0},x]]]-1;
total=total-Binomial[subset[[in]],in],
{in,len,1,-1}];
subset];

SubsetIndex[subset_List]:=(Total[MapIndexed[Binomial[#1,#2[[1]]]&,subset]]+1);


End[]; (* End `Private` *)

EndPackage[];
