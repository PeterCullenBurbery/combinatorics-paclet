(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`CombinatoricsPaclet`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`CombinatoricsPaclet`OrderlessCombinations;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


OrderlessCombinations // ClearAll

OrderlessCombinations::usage = "OrderlessCombinations[list,n] gives all possible orderless sets comprised of the elements of list up to length n.\nOrderlessCombinations[list,{n}] gives sets of exactly length n.\nOrderlessCombinations[list,{n,m}] gives sets containing between n and m elements.\nOrderlessCombinations[list,{n,m,t}] uses step t.\nOrderlessCombinations[list,{i1,i2,\[Ellipsis]}] uses the successive values i1, i2, \[Ellipsis].";

OrderlessCombinations[data_List, {0}] = {{}};

OrderlessCombinations[{}, {_}] = {{}};

OrderlessCombinations[{elem_}, {n_Integer}] :=
    {ConstantArray[elem, n]};

OrderlessCombinations[data_List, {n_}] :=
    Module[{c},
        With[{d2 = Union[data]},
            Flatten[Table[Join[ConstantArray[First[d2], c], #]& /@ OrderlessCombinations[
                Rest[d2], {n - c}], {c, n, 0, -1}], 1]
        ]
    ]

OrderlessCombinations[data_List, {min_Integer, max_Integer}] /; max >=
     min :=
    Join @@ Table[OrderlessCombinations[Union[data], {i}], {i, min, max
        }];

OrderlessCombinations[data_List, n_Integer] :=
    OrderlessCombinations[Union @ data, {1, n}]

OrderlessCombinations[data_List, {min_Integer, max_Integer, step_Integer
    }] /; max >= min :=
    Join @@ Table[OrderlessCombinations[Union[data], {i}], {i, min, max,
         step}];

OrderlessCombinations[data_List, list:{{__}}]  :=
    Join @@ Table[OrderlessCombinations[Union[data], {i}], {i,Flatten@list}];



(* ::Section::Closed:: *)
(*Package Footer*)


End[];

EndPackage[];
