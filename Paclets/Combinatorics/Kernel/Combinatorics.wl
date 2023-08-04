(* ::Package:: *)

(**)



(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`Combinatorics`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


PeterBurbery`Combinatorics`CanonicalMultiset;

PeterBurbery`Combinatorics`CentralBinomialCoefficient;

PeterBurbery`Combinatorics`ConjugatePartition;

PeterBurbery`Combinatorics`DescendingSublists;

PeterBurbery`Combinatorics`DivisorHasseDiagram;

PeterBurbery`Combinatorics`DominatingIntegerPartitionQ;

PeterBurbery`Combinatorics`DurfeeSquare;

PeterBurbery`Combinatorics`EnumerateMultisetPartialDerangements;

PeterBurbery`Combinatorics`EulerianCatalanNumber;

PeterBurbery`Combinatorics`EulerianNumber;

PeterBurbery`Combinatorics`EulerianNumberOfTheSecondKind;

PeterBurbery`Combinatorics`FerrersDiagram;

PeterBurbery`Combinatorics`Fibbinary;

PeterBurbery`Combinatorics`FibonacciEncode;

PeterBurbery`Combinatorics`FindAscentElements;

PeterBurbery`Combinatorics`FindAscentPositions;

PeterBurbery`Combinatorics`FindDescentElements;

PeterBurbery`Combinatorics`FindDescentPositions;

PeterBurbery`Combinatorics`FrobeniusSymbolFromPartition;

PeterBurbery`Combinatorics`FromInversionVector;

PeterBurbery`Combinatorics`FromPartitionPlusNotation;

PeterBurbery`Combinatorics`FromPartitionSuperscriptNotation;

PeterBurbery`Combinatorics`GaussFactorial;

PeterBurbery`Combinatorics`GrayCode;

PeterBurbery`Combinatorics`HasseDiagram;

PeterBurbery`Combinatorics`HookLengths;

PeterBurbery`Combinatorics`HuffmanCodeWords;

PeterBurbery`Combinatorics`HuffmanDecode;

PeterBurbery`Combinatorics`HuffmanEncode;

PeterBurbery`Combinatorics`IntegerPartitionQ;

PeterBurbery`Combinatorics`InverseFibonacci;

PeterBurbery`Combinatorics`InverseGrayCode;

PeterBurbery`Combinatorics`InversionCount;

PeterBurbery`Combinatorics`InversionVectorQ;

PeterBurbery`Combinatorics`LehmerCodeFromIndex;

PeterBurbery`Combinatorics`LehmerCodeFromPermutation;

PeterBurbery`Combinatorics`LucasNumberU1;

PeterBurbery`Combinatorics`LucasNumberV2;

PeterBurbery`Combinatorics`ModifiedCentralBinomialCoefficient;

PeterBurbery`Combinatorics`Multichoose;

PeterBurbery`Combinatorics`MultisetAssociation;

PeterBurbery`Combinatorics`MultisetCardinality;

PeterBurbery`Combinatorics`MultisetPartialDerangements;

PeterBurbery`Combinatorics`MultisetStrictDescents;

PeterBurbery`Combinatorics`MultisetStrictDescentElements;

PeterBurbery`Combinatorics`NarayanaNumber;

PeterBurbery`Combinatorics`NextPermutation;

PeterBurbery`Combinatorics`NumberOfTableaux;

PeterBurbery`Combinatorics`OrderedTupleFromIndex;

PeterBurbery`Combinatorics`OrderedTupleIndex;

PeterBurbery`Combinatorics`OrderlessCombinations;

PeterBurbery`Combinatorics`OrderlessCombinationsOfUnmarkedElements;

PeterBurbery`Combinatorics`PartialOrderGraphQ;

PeterBurbery`Combinatorics`PartitionCrank;

PeterBurbery`Combinatorics`PartitionFromFrobeniusSymbol;

PeterBurbery`Combinatorics`PartitionPlusNotation;

PeterBurbery`Combinatorics`PartitionRank;

PeterBurbery`Combinatorics`PartitionSuperscriptNotation;

PeterBurbery`Combinatorics`PermutationCountByInversions;

PeterBurbery`Combinatorics`PermutationDescents;

PeterBurbery`Combinatorics`PermutationFromIndex;

PeterBurbery`Combinatorics`PermutationFromLehmerCode;

PeterBurbery`Combinatorics`PermutationGraph;

PeterBurbery`Combinatorics`PermutationIndex;

PeterBurbery`Combinatorics`PermutationMajorIndex;

PeterBurbery`Combinatorics`PermutationToTableaux;

PeterBurbery`Combinatorics`Phitorial;

PeterBurbery`Combinatorics`PosetQ;

PeterBurbery`Combinatorics`PosetToTableau;

PeterBurbery`Combinatorics`Primorial;

PeterBurbery`Combinatorics`QExponential;

PeterBurbery`Combinatorics`QMultinomial;

PeterBurbery`Combinatorics`RandomSelfConjugatePartition;

PeterBurbery`Combinatorics`RandomYoungTableau;

PeterBurbery`Combinatorics`RationalNumberRepeatingDecimalPeriod;

PeterBurbery`Combinatorics`ReflexiveGraphQ;

PeterBurbery`Combinatorics`SecantNumber;

PeterBurbery`Combinatorics`SelectPermutations;

PeterBurbery`Combinatorics`SelectSubsets;

PeterBurbery`Combinatorics`SelectTuples;

PeterBurbery`Combinatorics`SelfConjugatePartitionQ;

PeterBurbery`Combinatorics`SignedLahNumber;

PeterBurbery`Combinatorics`StandardYoungTableaux;

PeterBurbery`Combinatorics`StrictIntegerPartitions;

PeterBurbery`Combinatorics`SubsetFromIndex;

PeterBurbery`Combinatorics`SubsetIndex;

PeterBurbery`Combinatorics`TableauQ;

PeterBurbery`Combinatorics`TableauToPoset;

PeterBurbery`Combinatorics`TableauxToPermutation;

PeterBurbery`Combinatorics`TangentNumber;

PeterBurbery`Combinatorics`ToInversionVector;

PeterBurbery`Combinatorics`TransitiveGraphQ;

PeterBurbery`Combinatorics`TransposeTableau;

PeterBurbery`Combinatorics`TupleFromIndex;

PeterBurbery`Combinatorics`TupleIndex;

PeterBurbery`Combinatorics`UnsignedLahNumber;

PeterBurbery`Combinatorics`YoungDiagram;

PeterBurbery`Combinatorics`ZeckendorfRepresentation;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


PeterBurbery`Combinatorics`CanonicalMultiset // ClearAll

PeterBurbery`Combinatorics`CanonicalMultiset::usage = "CanonicalMultiset[multiset] replaces all elements in multiset with integers.";

PeterBurbery`Combinatorics`CanonicalMultiset[multiset_] :=
    Module[{multisetSupport},
        multisetSupport = Union[multiset];
        multiset /. Thread[multisetSupport -> Range[Length[multisetSupport
            ]]]
    ]

CentralBinomialCoefficient // ClearAll

SetAttributes[CentralBinomialCoefficient, {NumericFunction, Listable}
    ]

CentralBinomialCoefficient::usage = "CentralBinomialCoefficient[n] calculates the nth central binomial coefficient.";

CentralBinomialCoefficient[n_] :=
    Binomial[2 n, n]

ConjugatePartition // ClearAll

ConjugatePartition::usage = "ConjugatePartition[p] gives the partition that transposes the rows and columns of the integer partition p.";

ConjugatePartition[p_] /; IntegerPartitionQ[p] :=
    Total[UnitStep[Outer[Plus, p, -Range[First[p]]]]]

DescendingSublists // ClearAll

DescendingSublists::usage = "DescendingSublists[list] makes sublists of list starting at its left-to-right maxima.";

DescendingSublists[list_] :=
    TakeList[list, Length /@ Split[Max /@ Table[Take[list, n], {n, Length
         @ list}]]]

DivisorHasseDiagram // ClearAll

DivisorHasseDiagram::usage = "DivisorHasseDiagram[n] gives a Hasse diagram based on the divisors of n, represented as a Graph.";

Options[DivisorHasseDiagram] = Options[Graph];

DivisorHasseDiagram[n_Integer?Positive, opt : OptionsPattern[]] :=
    Module[{divisors = Divisors[n], links},
        links =
            Reap[
                    Do[
                        If[a > b && Divisible[a, b],
                            Sow[a \[DirectedEdge] b]
                        ]
                        ,
                        {a, divisors}
                        ,
                        {b, divisors}
                    ];
                    Nothing
                ] // Flatten;
        TransitiveReductionGraph[links, Evaluate @ FilterRules[{opt},
             Options[Graph]]]
    ]

DominatingIntegerPartitionQ // ClearAll

DominatingIntegerPartitionQ::usage = "DominatingIntegerPartitionQ[p, q] yields True if integer partition p dominates integer partition q and False otherwise.";

DominatingIntegerPartitionQ[a_, b_] /; IntegerPartitionQ[a] && IntegerPartitionQ[
    b] && Total[a] == Total[b] :=
    (Length[a] <= Length[b]) &&
        With[{aa = Accumulate[a], bb = Accumulate[Take[b, Length[a]]]
            },
            VectorQ[aa - bb, NonNegative]
        ]

DurfeeSquare // ClearAll

DurfeeSquare::usage = "DurfeeSquare[p] gives the number of rows involved in the Durfee square of partition p, the side of the largest-sized square contained within the Ferrers diagram of p.";

DurfeeSquare[{}] = 0

DurfeeSquare[s_List] :=
    Module[{i, max = 1},
            Do[
                If[s[[i]] >= i,
                    max = i
                ]
                ,
                {i, 2, Min[Length[s], First[s]]}
            ];
            max
        ] /; PeterBurbery`Combinatorics`IntegerPartitionQ[s]

EnumerateMultisetPartialDerangements // ClearAll

DerangementsCount // ClearAll

DerangementsCount[nvec_List] :=
    Integrate[Exp[-x] Times @@ (LaguerreL[nvec, x]), {x, 0, \[Infinity]
        }]

vCounts // ClearAll

vCounts[lst_, nfixed_] :=
    Counts @ Map[Sort @* Values @* Counts] @ Subsets[lst, {Length @ lst
         - nfixed}]

EnumerateMultisetPartialDerangements::usage = "EnumerateMultisetPartialDerangements[multiset] enumerates the number of derangements of a multiset with 0 fixed points.EnumerateMultisetPartialDerangements[multiset, nfixed] enumerates the number of partial derangements of a multiset with nfixed fixed points.";

EnumerateMultisetPartialDerangements[multiset_, Optional[nfixed_Integer
     ? (IntegerQ[#] && # \[Element] NonNegativeIntegers&), 0]] /; nfixed <=
     Length[multiset] :=
    Abs @ Total @ KeyValueMap[#2 DerangementsCount @ #&] @ vCounts[multiset,
         nfixed]

EulerianCatalanNumber // ClearAll

SetAttributes[EulerianCatalanNumber, {NumericFunction, Listable}]

EulerianCatalanNumber::usage = "EulerianCatalanNumber[n] calculates the nth Eulerian Catalan number.";

EulerianCatalanNumber[n_] :=
    1 / (n + 1) PeterBurbery`Combinatorics`EulerianNumber[2 n + 1, n 
        + 1](*Although this is different from the definition of 1/n+1*EulerianNumber[2n+1,n], we need to use n+1 instead of n for the second argument*)

EulerianNumber // ClearAll

SetAttributes[EulerianNumber, {Listable, NumericFunction}]

EulerianNumber::usage = "EulerianNumber[n, k] gives the number of permutations of the numbers 1 to n in which exactly k elements are greater than the previous element (permutations with k \"ascents\")";

(*This definition is based on the ResourceFunction EulerianNumber from https://resources.wolframcloud.com/FunctionRepository/resources/EulerianNumber/?i=EulerianNumber&searchapi=https%3A%2F%2Fresources.wolframcloud.com%2FFunctionRepository%2Fsearch*)

EulerianNumber[n_, k_] :=
    Module[{x},
        SeriesCoefficient[(1 - x) ^ (n + 1) PolyLog[-n, x], {x, 0, k}
            ]
    ]

EulerianNumberOfTheSecondKind // ClearAll

SetAttributes[EulerianNumberOfTheSecondKind, {Listable, NumericFunction
    }]

EulerianNumberOfTheSecondKind::usage = "EulerianNumberOfTheSecondKind[n, m]number of all such permutations of the multiset where there are two of every element with exactly km ascents.";

EulerianNumberOfTheSecondKind[n_, m_] :=
    0 /; Or @@ {m >= n, n === 0}

EulerianNumberOfTheSecondKind[n_, m_] /; m === 0 :=
    1

EulerianNumberOfTheSecondKind[n_, k_] := EulerianNumberOfTheSecondKind[
    n, k] =
    (2 n - k - 1) EulerianNumberOfTheSecondKind[n - 1, k - 1] + (k + 
        1) EulerianNumberOfTheSecondKind[n - 1, k]

FerrersDiagram // ClearAll

FerrersDiagram::usage = "FerrersDiagram[p] gives a ragged array of dots, with the number of dots in each row equal to a corresponding part of the integer partition p.";

FerrersDiagram @ p_ :=
    Grid[Table["\[FilledCircle]", #]& /@ p] /; IntegerPartitionQ @ p

Fibbinary // ClearAll

Fibbinary::usage = "Fibbinary[n] gives the nth fibbinary number.\nFibbinary[{n}] gives a list of fibbinary numbers less than or equal to n.";

SetAttributes[Fibbinary, {NumericFunction}]

nextFibbinary[x_] :=
    With[{y = BitNot[BitShiftRight[x]]},
        BitAnd[x - y, y]
    ]

Fibbinary[0] = 0;

Fibbinary[n_Integer?Positive] := Fibbinary[n] =
    nextFibbinary[Fibbinary[n - 1]]

Fibbinary[{n_Integer?Positive}] :=
    With[{r = Range[n]},
        Pick[r, BitAnd[r, 2 r], 0]
    ]

(* (* slower, but uses less memory *)
Fibbinary[{n_Integer?Positive}]:=NestWhileList[nextFibbinary,1,#<=n&,1,Infinity,-1]*)

FibonacciEncode // ClearAll

FibonacciEncode::usage = "FibonacciEncode[n] gives the nth FibonacciEncode number.\nFibonacciEncode[{n}] gives a list of FibonacciEncode numbers less than or equal to n.";

SetAttributes[FibonacciEncode, {NumericFunction}]

nextFibonacciEncode[x_] :=
    With[{y = BitNot[BitShiftRight[x]]},
        BitAnd[x - y, y]
    ]

FibonacciEncode[0] = 0;

FibonacciEncode[n_Integer?Positive] := FibonacciEncode[n] =
    nextFibonacciEncode[FibonacciEncode[n - 1]]

FibonacciEncode[{n_Integer?Positive}] :=
    With[{r = Range[n]},
        Pick[r, BitAnd[r, 2 r], 0]
    ]

FindAscentElements // ClearAll

FindAscentElements::usage = "FindAscentElements[multi] returns the sets of adjacent elements in the multiset multi where the second element of the set of adjacent elements is greater than the first element of the set of adjacent elements.";

FindAscentElements[multiset_] :=
    Extract[Partition[multiset, 2, 1], FindAscentPositions[multiset]]

FindAscentElements[multiset_, PerformanceGoal -> "Speed"] :=
    Extract[Partition[multiset, 2, 1], FindAscentPositions[multiset, 
        PerformanceGoal -> "Speed"]]

FindAscentElements[multiset_, PerformanceGoal -> "Memory"] :=
    Extract[Partition[multiset, 2, 1], FindAscentPositions[multiset, 
        PerformanceGoal -> "Memory"]]

FindAscentPositions // ClearAll

FindAscentPositions::usage = "FindAscentPositions[multi] finds the positions of ascents in the multiset multi.";

FindAscentPositions[multiset_] :=
    Position[Less @@@ Partition[multiset, 2, 1], True]

FindAscentPositions[multiset_, PerformanceGoal -> "Speed"] :=
    Position[Less @@@ Partition[multiset, 2, 1], True]

FindAscentPositions[multiset_, PerformanceGoal -> "Memory"] :=
    List /@ Select[-1 + Range[Length[multiset]], multiset[[#1]] < multiset
        [[#1 + 1]]&]

FindDescentPositions // ClearAll

FindDescentPositions::usage = "FindDescentPositions[multi] finds the positions of descents in the multiset multi.";

FindDescentPositions[multiset_] :=
    Position[Greater @@@ Partition[multiset, 2, 1], True]

FindDescentPositions[multiset_, PerformanceGoal -> "Speed"] :=
    Position[Greater @@@ Partition[multiset, 2, 1], True]

FindDescentPositions[multiset_, PerformanceGoal -> "Memory"] :=
    List /@ Select[-1 + Range[Length[multiset]], multiset[[#1]] > multiset
        [[#1 + 1]]&]

(* (* slower, but uses less memory *)
FibonacciEncode[{n_Integer?Positive}]:=NestWhileList[nextFibonacciEncode,1,#<=n&,1,Infinity,-1]*)

FrobeniusSymbolFromPartition // ClearAll

FrobeniusSymbolFromPartition::usage = "FrobeniusSymbolFromPartition[p] gives a pair of lists that count dots in the rows and columns relative to the diagonal of the Durfee square in the Ferrers diagram of the partition p.";

FrobeniusSymbolFromPartition[x_] :=
    Module[{d = DurfeeSquare[x]},
            {Take[x, d] - Range[d], Take[ConjugatePartition[x], d] - 
                Range[d]}
        ] /; IntegerPartitionQ[x]

FromInversionVector // ClearAll

FromInversionVector::usage = "FromInversionVector[vect] constructs the permutation list corresponding to the inversion vector vect.";

FromInversionVector[vec_ ? (InversionVectorQ)] :=
    Module[{n = Length[vec], i, p},
        p = {n};
        Do[p = Insert[p, i, vec[[i]] + 1], {i, n - 1, 1, -1}];
        p
    ]

FromPartitionPlusNotation // ClearAll

FromPartitionPlusNotation::usage = "FromPartitionPlusNotation[\[Lambda]] returns a list of weakly decreasing integers representing the integer partition \[Lambda] written in partition plus notation.";

FromPartitionPlusNotation[\[Lambda]_Integer?IntegerQ] :=
    {\[Lambda]}

FromPartitionPlusNotation[\[Lambda]_] :=
    List @@ \[Lambda]

FromPartitionSuperscriptNotation // ClearAll

FromPartitionSuperscriptNotation::usage = "FromPartitionSuperscriptNotation[\[Lambda]] goes from \[Lambda] represented with partition superscript notation to \[Lambda] represented as a weakly decreasing list of strictly positive integers.";

FromPartitionSuperscriptNotation[\[Lambda]_] :=
    Catenate[ConstantArray @@@ Identity @@ \[Lambda]]

GaussFactorial // ClearAll

SetAttributes[GaussFactorial, {Listable, NumericFunction}]

GaussFactorial::usage = "GaussFactorial[n,k] computes the Gauss factorial N_k!";

(*When we do GaussFactorial[N,n] we have N_n!, the phitorial*)

GaussFactorial[n_Integer?IntegerQ /; 1 <= n, k_] :=
    Times @@ Select[CoprimeQ[#, k]&][Range[n]]

GrayCode // ClearAll

Attributes[GrayCode] = {Listable};

GrayCode::usage = "GrayCode[n] gives the Gray code of the integer n.";

GrayCode[n_Integer ? (IntegerQ[#] && NonNegative[#]&)] :=
    IntegerDigits[BitXor[n, BitShiftRight[n, 1]], 2]

HasseDiagram // ClearAll

HasseDiagram::usage = "HasseDiagram[f,s] constructs a Hasse diagram of the partial order set (poset) defined by the binary relation f and set s.";

Options[HasseDiagram] = Options[Graph];

HasseDiagram[f_, s_List, opts : OptionsPattern[]] :=
    TransitiveReductionGraph[RelationGraph[f, s, opts]]

HookLengths // ClearAll

HookLengths::usage = "HookLengths[p] gives a list of lists of lengths of p for a partition p where an entry is the hook length in the corresponding cell in the Young tableau of p.";

HookLengths[partition_] /; IntegerPartitionQ[partition] :=
    With[{partitionT = ConjugatePartition[partition]},
        Table[partition[[i]] + partitionT[[j]] - i - j + 1, {i, Length[
            partition]}, {j, partition[[i]]}]
    ]

HuffmanCodeWords // ClearAll

HuffmanCodeWords::usage = "HuffmanCodeWords[list] gives optimal binary Huffman code words corresponding to probabilities in list.";

HuffmanCodeWords[p_ /; VectorQ[p, NumericQ]] :=
    Sort[Flatten[MapIndexed[Rule, FixedPoint[Replace[Sort[#1], {{p0_,
         i0_}, {p1_, i1_}, pi___} :> {{p0 + p1, {i0, i1}}, pi}]&, MapIndexed[
        List, Normalize[p, Total]]][[1, 2]], {-1}]]][[All, -1,  ;; -2]] - 1

HuffmanDecode // ClearAll

HuffmanDecode::usage = "HuffmanDecode[assoc] returns the decoding of an association assoc representing a Huffman encoding as a string.";

HuffmanDecode[assoc_?AssociationQ] :=
    Module[{chars, cList, encoding, words},
        {chars, encoding, words} = Lookup[assoc, {"Symbols", "Encoding",
             "CodeWords"}];
        (
                cList = chars[[First[{{}, encoding} //. MapIndexed[{{
                    r___}, Flatten[{#1, s___}]} :> {{r, #2[[1]]}, {s}}&, words]]]];
                StringJoin[cList] /; MatchQ[cList, {__String}]
            ) /; FreeQ[{chars, encoding, words}, _Missing] && chars ===
                 DeleteDuplicates[chars] && Length[chars] == Length[words] && MatchQ[
                words, {{(0 | 1)..}..}] && MatchQ[encoding, {(0 | 1)..}]
    ]

HuffmanEncode // ClearAll

HuffmanEncode::usage = "HuffmanEncode[string] gives an optimal binary Huffman encoding for string.";

HuffmanEncode[d_] /; MatchQ[d, {__String}] :=
    Module[{chars = Union[d], code},
        code = HuffmanCodeWords[(Count[d, #1]& /@ chars) / Length[d]]
            ;
        <|"Symbols" -> chars, "CodeWords" -> code, "Encoding" -> Flatten[
            d /. MapThread[Rule, {chars, code}]]|>
    ]

HuffmanEncode[s_String] :=
    HuffmanEncode[Characters[s]]

IntegerPartitionQ // ClearAll

IntegerPartitionQ::usage = "IntegerPartitionQ[x] checks whether x is a weakly decreasing list of positive integers.\nIntegerPartitionQ[x,n] checks whether x is an integer partition of n.";

IntegerPartitionQ[x_] :=
    VectorQ[x, Internal`PositiveIntegerQ] && VectorQ[Differences[x], 
        Internal`NonPositiveIntegerQ]

IntegerPartitionQ[x_, n_] :=
    IntegerQ[n] && IntegerPartitionQ[x] && Total[x] == n

InverseFibonacci // ClearAll

InverseFibonacci::usage = "InverseFibonacci[s] gives the inverse Fibonacci function obtained as the solution for z in s=Fibonacci[z].";

SetAttributes[InverseFibonacci, {Listable, NumericFunction}];

InverseFibonacciIF = NDSolveValue[{Fibonacci'[n[x]] n'[x] == 1, n[1] 
    == 2}, n, {x, 1, 100}];

ansatz[x_Integer] :=
    If[x < 100,
        With[{r = InverseFibonacciIF[x]},
            If[Fibonacci[Round[r]] === x,
                Round[r]
                ,
                SetPrecision[r, 5]
            ]
        ]
        ,
        With[{r = Log[GoldenRatio, x Sqrt[5]]},
            If[Fibonacci[Round[r]] === x,
                Round[r]
                ,
                SetPrecision[r, Min[Floor[Log10[5 Log[Sqrt[5] x] x^2]
                    ], 10]]
            ]
        ]
    ]

ansatz[x_] :=
    If[x < 100,
        SetPrecision[InverseFibonacciIF[x], 5]
        ,
        SetPrecision[Log[GoldenRatio, x Sqrt[5]], Min[Floor[Log10[5 Log[
            Sqrt[5] x] x^2]], 10]]
    ]

InverseFibonacci[x_Real ? (GreaterEqualThan[1])] :=
    N[Root[{Fibonacci[#] - Rationalize[x, 0]&, ansatz[x]}], Precision[
        x]]

InverseFibonacci[x_ ? (GreaterEqualThan[1])] :=
    Root[{Fibonacci[#] - x&, ansatz[x]}]

(* derivative *)

InverseFibonacci /: Derivative[1][InverseFibonacci] = Function @ Evaluate @
     FullSimplify[((Sqrt[5] (1/2 (1 + Sqrt[5])) ^ InverseFibonacci[#]) / 
    ((1/2 (1 + Sqrt[5])) ^ (2 InverseFibonacci[#]) Log[GoldenRatio] + Cos[
    \[Pi] InverseFibonacci[#]] Log[GoldenRatio] + \[Pi] Sin[\[Pi] InverseFibonacci[
    #]]))];

InverseGrayCode // ClearAll

InverseGrayCode::usage = "InverseGrayCode[{b1,b2,\[Ellipsis]}] gives the integer corresponding to the Gray code represented by the bits bi.";

InverseGrayCode[v : {(0 | 1)..}] :=
    iInverseGrayCode[v]

iInverseGrayCode[v_] :=
    If[Length[v] < 1.2 * 2^16(* empirically found threshold *),
        iInverseGrayCodeSmall[v]
        ,
        iInverseGrayCodeBig[v]
    ]

iInverseGrayCodeSmall[v_] :=
    With[{n = FromDigits[v, 2]},
        Fold[BitXor, n, BitShiftRight[n, Range[Length[v] - 1]]]
    ]

iInverseGrayCodeBig[v_] :=
    Module[{n = FromDigits[v, 2], res},
        res = n;
        Do[
            n = BitShiftRight[n];
            res = BitXor[res, n]
            ,
            {Length[v] - 1}
        ];
        res
    ]

InversionCount // ClearAll

InversionCount::usage = "InversionCount[p] counts the number of inversions in permutation p.";

InversionCount[{}] :=
    0

InversionCount[p_?PermutationListQ] :=
    Total[ToInversionVector[p]]

InversionVectorQ // ClearAll

InversionVectorQ::usage = "InversionVectorQ[iv] checks if iv is the inversion vector of a permutation list.";

InversionVectorQ @ iv_ :=
    And @@ Thread[GreaterEqual[Range[0, -1 + Length @ iv], Reverse @ 
        iv]]

LehmerCodeFromIndex // ClearAll

LehmerCodeFromIndex[index_Integer?IntegerQ, length_Integer?IntegerQ] :=
    Reverse[Last /@ FoldList[{Floor[#1[[1]] / #2], Mod[#1[[1]], #2]}&,
         {index - 1, 0}, Range[2, length]]]

LehmerCodeFromPermutation // ClearAll

LehmerCodeFromPermutation::usage = "LehmerCodeFromPermutation[perm] creates the Lehmer code corresponding to permutation perm.";

LehmerCodeFromPermutation[perm_List] :=
    Flatten[Table[Position[Sort[Drop[perm, n - 1]], perm[[n]]] - 1, {
        n, 1, Length[perm]}]]

LehmerCodeIndex[Pattern[lehmer, Blank[List]]] :=
    Total[lehmer * Factorial[Reverse[Range[0, Length[lehmer] - 1]]]]

LucasNumberU1 // ClearAll

SetAttributes[LucasNumberU1, {NumericFunction, Listable}]

LucasNumberU1::usage = "LucasNumberU1[n, p, q] calculates the term of the Lucas sequence of the first kind U_n(p, q).";

LucasNumberU1[0, p_, q_] :=
    0;

LucasNumberU1[1, p_, q_] :=
    1;

LucasNumberU1[n_, p_, q_] /; n > 1 := LucasNumberU1[n, p, q] =
    p LucasNumberU1[n - 1, p, q] - q LucasNumberU1[n - 2, p, q]

LucasNumberV2 // ClearAll

SetAttributes[LucasNumberV2, {NumericFunction, Listable}]

LucasNumberV2::usage = "LucasNumberV2[n, p, q] calculates the term of the Lucas sequence of the second kind V_n(p, q).";

LucasNumberV2[0, p_, q_] :=
    2;

LucasNumberV2[1, p_, q_] :=
    p;

LucasNumberV2[n_, p_, q_] /; n > 1 := LucasNumberV2[n, p, q] =
    p LucasNumberV2[n - 1, p, q] - q LucasNumberV2[n - 2, p, q]

ModifiedCentralBinomialCoefficient // ClearAll

SetAttributes[ModifiedCentralBinomialCoefficient, {NumericFunction, Listable
    }]

ModifiedCentralBinomialCoefficient::usage = "ModifiedCentralBinomialCoefficient[n] calculates the nth modified central binomial coefficient.";

ModifiedCentralBinomialCoefficient[n_] :=
    Binomial[n, Quotient[n, 2]]

(*Binomial[n,Floor[n/2]]*)

Multichoose // ClearAll

Multichoose::usage = "Multichoose[n,k] represents n multichoose k.";

Multichoose[n_, k_] :=
    Binomial[n + k - 1, k]

MultisetAssociation // ClearAll

MultisetAssociation::usage = "MultisetAssociation[multiset] returns an association for multiset.";

MultisetAssociation[multiset_] :=
    Association[MapIndexed[Identity @@ #2 -> #1&, multiset]]

MultisetCardinality // ClearAll;

MultisetCardinality::usage = "MultisetCardinality[m] returns the number of distinct elements in the multiset m.";

MultisetCardinality[m_] :=
    Length[Union[m]];

MultisetPartialDerangements // ClearAll

MultisetPartialDerangements::usage = "MultisetPartialDerangements[multiset] returns the derangements of the multiset with 0 fixed points where every element moves.\nMultisetPartialDerangements[multiset, number] returns the partial derangements of the multiset with the given number of fixed points.\nMultisetPartialDerangements[multiset,number,limit] returns only limit derangements.";

MultisetPartialDerangements[set_, Optional[numberOfFixedPoints_, 0], 
    Optional[limit_, All]] :=
    Take[Select[Count[MapApply[SameQ, Transpose[{#, set}]], True] ===
         numberOfFixedPoints&] @ Permutations[set], limit]

MultisetPartialDerangements[args___] :=
    Null /; CheckArguments[MultisetPartialDerangements[args], {1, 3}]

MultisetStrictAscentElements // ClearAll

MultisetStrictAscentElements::usage = "MultisetStrictAscentElements[multiset] returns the pairs elements that at the positions of the ascents of multiset.";

MultisetStrictAscentElements[multiset_] :=
    Extract[Partition[multiset, 2, 1], MultisetStrictAscents[multiset
        ]]

MultisetStrictDescents // ClearAll

MultisetStrictDescents::usage = "MultisetStrictDescents[perm] gives the strict descents of the permutation perm.";

MultisetStrictDescents[perm_] :=
    Position[(#1 > #2&) @@@ Partition[perm, 2, 1], True]

MultisetStrictDescentElements // ClearAll

MultisetStrictDescentElements::usage = "MultisetStrictDescentElements[perm] gives the elements that compose the descents in the multiset perm.";

MultisetStrictDescentElements[perm_] :=
    Extract[Partition[perm, 2, 1], MultisetStrictDescents[perm]]

NarayanaNumber // ClearAll

SetAttributes[NarayanaNumber, {Listable, NumericFunction}]

NarayanaNumber::usage = "NarayanaNumber[n,k] gives the Narayana number N(n,k).";

NarayanaNumber[n_, k_] :=
    1 / n Binomial[n, k] Binomial[n, k - 1]

NextPermutation // ClearAll

NextPermutation::usage = "NextPermutation[p] gives the permutation following p in lexicographic order.";

NextPermutation[l_List] :=
    Module[{sorted = Sort[l]},
        sorted /; l === Reverse[sorted]
    ]

NextPermutation[l_List] :=
    Module[{n = Length[l], i, j, nl = l},
        i = n - 1;
        While[Order[nl[[i]], nl[[i + 1]]] == -1, i--];
        j = n;
        While[Order[nl[[j]], nl[[i]]] == 1, j--];
        {nl[[i]], nl[[j]]} = {nl[[j]], nl[[i]]};
        Join[Take[nl, i], Reverse[Drop[nl, i]]]
    ]

NumberOfTableaux // ClearAll

NumberOfTableaux::usage = "NumberOfTableaux[t] returns the number of Young tableaux with shape t, where the shape is a decreasing integer partition.\nNumberOfTableaux[n] returns the total number of Young tableaux for all decreasing integer partitions of n.";

NumberOfTableaux[{}] :=
    1;

NumberOfTableaux[s_List] :=
    With[{transpose = ConjugatePartition[s]},
        (Total[s]!) / Product[transpose[[col]] - row + s[[row]] - col
             + 1, {row, Length[s]}, {col, s[[row]]}]
    ];

NumberOfTableaux[n_Integer] :=
    Total[Map[NumberOfTableaux, IntegerPartitions[n]]];

OrderedTupleFromIndex // ClearAll

OrderedTupleFromIndex::usage = "OrderedTupleFromIndex[index, len] returns an ordered tuple of length len with given index.";

OrderedTupleFromIndex[index_Integer?IntegerQ, len_Integer?IntegerQ] :=
    Module[{tuple, total, x},
        tuple = Table[0, {len}];
        total = index;
        Do[
            tuple[[in]] = Ceiling[x /. Flatten[NSolve[{Product[(x - n
                 + 1) / n, {n, 1, in}] == total, x > 0}, x]]] - 1;
            total = total - Binomial[tuple[[in]], in]
            ,
            {in, len, 1, -1}
        ];
        tuple - Range[0, len - 1]
    ];

OrderedTupleIndex // ClearAll

OrderedTupleIndex::usage = "OrderedTupleIndex[tuple] gives the index of ordered tuple.";

OrderedTupleIndex[tuple_List?ListQ] :=
    (Total[MapIndexed[Binomial[#1, #2[[1]]]&, tuple + Range[0, Length[
        tuple] - 1]]] + 1);

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

OrderlessCombinations[data_List, list : {{__}}] :=
    Join @@ Table[OrderlessCombinations[Union[data], {i}], {i, Flatten
         @ list}];

OrderlessCombinationsOfUnmarkedElements // ClearAll

OrderlessCombinationsOfUnmarkedElements::usage = "OrderlessCombinationsOfUnmarkedElements[list,nspec] gives  orderless combinations for list and nspec with the constraint that the elements of list are unmarked by replacing the elements with integers.";

OrderlessCombinationsOfUnmarkedElements[set_, nspec_] :=
    Keys[GroupBy[PeterBurbery`Combinatorics`CanonicalMultiset][PeterBurbery`Combinatorics`OrderlessCombinations[
        set, nspec]]]

ClearAll[AntiSymmetricGraphQ, PartialOrderGraphQ, RemoveSelfLoops]

PartialOrderGraphQ::usage = "PartialOrderGraphQ[g] yields True if the binary relation defined by edges of the graph g is a partial order and False otherwise.";

RemoveSelfLoops[g_Graph] :=
    Graph[DeleteCases[EdgeList[g], _[v_, v_]]]

AntiSymmetricGraphQ[g_Graph] :=
    Module[{e = List @@@ EdgeList[RemoveSelfLoops[g]]},
            Apply[And, Map[!MemberQ[e, Reverse[#]]&, e]]
        ] /; !UndirectedGraphQ[g]

AntiSymmetricGraphQ[g_Graph] :=
    EdgeCount[RemoveSelfLoops[g]] == 0

PartialOrderGraphQ[g_Graph] :=
    False /; VertexCount[g] == 0

PartialOrderGraphQ[g_Graph] :=
    ReflexiveGraphQ[g] && AntiSymmetricGraphQ[g] && TransitiveGraphQ[
        g]

PartitionCrank // ClearAll

PartitionCrank::usage = "PartitionCrank[x] gives Dyson's crank of the partition x.";

PartitionCrank[{1}] = 1;

PartitionCrank\[Mu][\[Lambda]_] :=
    Count[# > Count[\[Lambda], 1]& /@ \[Lambda], True] /; IntegerPartitionQ[
        \[Lambda]]

PartitionCrank[\[Lambda]_] :=
    If[Count[\[Lambda], 1] > 0,
            PartitionCrank\[Mu][\[Lambda]] - Count[\[Lambda], 1]
            ,
            Max @ \[Lambda]
        ] /; IntegerPartitionQ[\[Lambda]]

PartitionFromFrobeniusSymbol // ClearAll

PartitionFromFrobeniusSymbol::usage = "PartitionFromFrobeniusSymbol[f] gives the partition whose Frobenius symbol is f.";

PartitionFromFrobeniusSymbol[f_] :=
    Module[{a, b, d},
            {a, b} = f;
            d = Length @ a;
            Join[a + Range @ d, ConjugatePartition @ DeleteCases[b - 
                Reverse[-1 + Range @ d], 0]]
        ] /; MatrixQ @ f && Length @ f == 2 && IntegerPartitionQ[First
             @ f + 1] && IntegerPartitionQ[Last @ f + 1]

PartitionPlusNotation // ClearAll

(*SetAttributes[PartitionPlusNotation,{Listable}]*)

PartitionPlusNotation::usage = "PartitionPlusNotation[partition] displays partition in plus notation.";

PartitionPlusNotation[{p_Integer?IntegerQ}] :=
    p

PartitionPlusNotation[partition_List ? (VectorQ[#, MatchQ[#, _Integer
    ?IntegerQ]&]&)] :=
    Inactive[Plus] @@ partition

PartitionRank // ClearAll

PartitionRank::usage = "PartitionRank[x] gives the difference of the largest part of the partition x and the number of parts of x.\n";

PartitionRank[x_] :=
    First @ x - Length @ x /; IntegerPartitionQ @ x

PartitionSuperscriptNotation // ClearAll

PartitionSuperscriptNotation::usage = "PartitionSuperscriptNotation[partition] represents partition with superscript notation.";

PartitionSuperscriptNotation[partition_] :=
    Row[KeyValueMap[Superscript][Counts[partition]]]

PermutationCountByInversions // ClearAll

PermutationCountByInversions::usage = "PermutationCountByInversions[n, k] gives the number of permutations of length n with exactly k inversions.\nPermutationCountByInversions[n] gives a List for all k starting at zero.";

PermutationCountByInversions[n_Integer?Positive] :=
    PermutationCountByInversions[n, All]

PermutationCountByInversions[n_Integer?Positive, All] :=
    Module[{p, z, i},
        p = Expand[Product[Cancel[(z^i - 1) / (z - 1)], {i, 1, n}]];
        CoefficientList[p, z]
    ]

PermutationCountByInversions[n_Integer, k_Integer] :=
    0 /; (k > Binomial[n, 2])

PermutationCountByInversions[n_Integer, 0] :=
    1

PermutationCountByInversions[n_Integer, k_Integer?Positive] :=
    PermutationCountByInversions[n, All][[k + 1]]

(*https://resources.wolframcloud.com/FunctionRepository/resources/PermutationCountByInversions*)

PermutationDescents // ClearAll

PermutationDescents::usage = "PermutationDescents[perm] gives the descents of the permutation perm.";

PermutationDescents[p_] :=
    Reverse[Length @ p - FindAscentPositions @ Reverse @ p]

PermutationFromIndex // ClearAll

PermutationFromIndex[index_Integer?IntegerQ, lengthInput_Integer?IntegerQ
    ] :=
    PermutationFromLehmerCode[LehmerCodeFromIndex[index, lengthInput]
        ]

PermutationFromIndex::usage = "PermutationFromIndex[index, lengthInput] returns the permutation of length lengthInput corresponding to the indexth permutation in lexicographic order.";

PermutationFromLehmerCode[lehmercode_List?ListQ] :=
    Module[{vals, result},
        vals = Range[Length[lehmercode]];
        result = Table[0, {Length[lehmercode]}];
        Do[
            result[[n]] = vals[[lehmercode[[n]] + 1]];
            vals = Drop[vals, {lehmercode[[n]] + 1}]
            ,
            {n, 1, Length[lehmercode]}
        ];
        result
    ];

PermutationGraph // ClearAll

PermutationGraph::usage = "PermutationGraph[p] gives the permutation graph for the permutation p.";

Options[PermutationGraph] = Options[Graph];

PermutationGraph[p_?PermutationListQ, opts : OptionsPattern[]] :=
    Module[{q = InversePermutation[p] // PermutationList},
        RelationGraph[((#1 < #2 && q[[#1]] > q[[#2]]) || (#1 > #2 && 
            q[[#1]] < q[[#2]]))&, Range[Length[q]], opts]
    ]

PermutationIndex // ClearAll

PermutationIndex::usage = "PermutationIndex[perm] gives the lexicographic index of permutation perm.";

PermutationIndex[perm_List] :=
    LehmerCodeIndex[LehmerCodeFromPermutation[perm]] + 1;

PermutationIndex[perm_?PermutationCyclesQ] :=
    PermutationIndex[PermutationList[perm]];

PermutationMajorIndex // ClearAll

PermutationMajorIndex::usage = "PermutationMajorIndex[p] gives the major index of the permutation p.";

PermutationMajorIndex[p_?PermutationListQ] :=
    Module[{i},
        Sum[
            If[p[[i]] > p[[i + 1]],
                i
                ,
                0
            ]
            ,
            {i, Length[p] - 1}
        ]
    ](*https://resources.wolframcloud.com/FunctionRepository/resources/PermutationMajorIndex/*)

PermutationToTableaux // ClearAll

PermutationToTableaux::usage = "PermutationToTableaux[p] returns the two Young tableaux corresponding to the permutation p.";

PermutationToTableaux[{}] :=
    {{}, {}};

PermutationToTableaux[c_?PermutationCyclesQ, rest___] :=
    With[{tmp = PermutationList[c, rest]},
        PermutationToTableaux[tmp] /; PermutationListQ[tmp]
    ];

PermutationToTableaux[p_?PermutationListQ] :=
    Module[{pt = {{p[[1]]}}, qt = {{1}}, r},
        Do[
            {pt, r} = InsertIntoTableau[p[[i]], pt, All];
            If[r <= Length[qt],
                AppendTo[qt[[r]], i]
                ,
                AppendTo[qt, {i}]
            ]
            ,
            {i, 2, Length[p]}
        ];
        {pt, qt}
    ];

InsertIntoTableau // ClearAll

InsertIntoTableau[e_Integer, t_] :=
    First[InsertIntoTableau[e, t, All]];

InsertIntoTableau[e_Integer, {}, All] :=
    {{{e}}, 1};

InsertIntoTableau[e_Integer, t1_, All] :=
    Module[{item = e, row = 0, col, t = t1},
        While[
            row < Length[t]
            ,
            row++;
            If[Last[t[[row]]] <= item,
                AppendTo[t[[row]], item];
                Return[{t, row}, Module]
            ];
            col = Ceiling[BinarySearch[t[[row]], item]];
            {item, t[[row, col]]} = {t[[row, col]], item};
        ];
        {Append[t, {item}], row + 1}
    ];

BinarySearch::error = "The input list is non-numeric.";

BinarySearch[l_ ? (Length[#] > 0&), k_?NumericQ, f_:Identity] :=
    With[{res = binarysearchchore[l, k, f]},
        res /; res =!= $Failed
    ];

binarysearchchore[l_, k_, f_] :=
    Module[{lo = 1, mid, hi = Length[l], el},
        While[
            lo <= hi
            ,
            If[(el = f[l[[mid = Quotient[lo + hi, 2]]]]) === k,
                Return[mid, Module]
            ];
            If[!NumericQ[el],
                (
                    ResourceFunction["ResourceFunctionMessage"][BinarySearch
                        ::error];
                    Return[$Failed, Module]
                )
            ];
            If[el > k,
                hi = mid - 1
                ,
                lo = mid + 1
            ]
        ];
        lo - 1/2
    ];

Phitorial // ClearAll

SetAttributes[Phitorial, {Listable}]

Phitorial::usage = "Phitorial[n] computes the phitorial of the integer n.";

Phitorial[n_?IntegerQ] :=
    n ^ EulerPhi[n] * Times @@ ((Factorial[#] / #^#) ^ MoebiusMu[n / 
        #]& /@ Divisors[n])

PosetQ // ClearAll

PosetQ::usage = "PosetQ[poset] determines if the coordinates in poset are partially ordered.";

PosetQ[poset_] :=
    Module[{sortedlast, sortedfirst, gatherfirst, gatherlast},
        If[!MatrixQ[poset, IntegerQ],
            Return[False, Module]
        ];
        sortedlast = GatherBy[Sort[poset], Last];
        sortedfirst = GatherBy[Sort[poset], First];
        gatherfirst = GatherBy[Reverse[Flatten[Position[sortedlast, #
            ]& /@ poset, 1], 2], First];
        gatherlast = GatherBy[Flatten[Position[sortedfirst, #]& /@ poset,
             1], Last];
        sortedlast === gatherlast && sortedfirst === gatherfirst
    ]

PosetToTableau // ClearAll

PosetToTableau::usage = "PosetToTableau[poset] converts the partially ordered set of coordinates poset into a Young tableau.";

PosetToTableau[poset_] /; PosetQ[poset] :=
    Module[{rp = Reverse[poset, 2], ord},
        ord = Ordering[rp];
        TakeList[ord, Length /@ SplitBy[rp[[ord]], First]]
    ]

ClearAll[Primorial];

Primorial::usage = "Primorial[n] calculates the product of the primes up to n.";

SetAttributes[Primorial, Listable];

Primorial[Infinity] = 4 Pi^2;

Primorial[n_Integer?IntegerQ] :=
    Array[Prime, PrimePi[n], 1, Times]

QExponential // ClearAll

SetAttributes[QExponential, {Listable, NumericFunction}]

QExponential::usage = "QExponential[z, q] gives the q-exponential of z, e_q(z)";

QExponential[z_, q_, Optional[precision_, $MachinePrecision]] :=
    Sum[z^n / QFactorial[n, q], {n, 0, Infinity}] /. {x_ /; !NumericQ[
        x] :> N[x, precision]}

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

RandomSelfConjugatePartition // ClearAll

RandomSelfConjugatePartition::usage = "RandomSelfConjugatePartition[poset] determines if the coordinates in poset are partially ordered.";

RandomSelfConjugatePartition[poset_] :=
    Module[{sortedlast, sortedfirst, gatherfirst, gatherlast},
        If[!MatrixQ[poset, IntegerQ],
            Return[False, Module]
        ];
        sortedlast = GatherBy[Sort[poset], Last];
        sortedfirst = GatherBy[Sort[poset], First];
        gatherfirst = GatherBy[Reverse[Flatten[Position[sortedlast, #
            ]& /@ poset, 1], 2], First];
        gatherlast = GatherBy[Flatten[Position[sortedfirst, #]& /@ poset,
             1], Last];
        sortedlast === gatherlast && sortedfirst === gatherfirst
    ]

RandomYoungTableau // ClearAll

RandomYoungTableau::usage = "RandomYoungTableau[p] generates a random Young tableau of shape p.\nRandomYoungTableau[p,n] generates n random Young tableaux of shape p.";

RandomYoungTableau[shape_, n_Integer?NonNegative] /; IntegerPartitionQ[
    shape] :=
    Table[RandomYoungTableau[shape], {n}]

RandomYoungTableau[shape_] /; IntegerPartitionQ[shape] :=
    Module[{p = shape, h, i, j, n, res, y},
        n = Total[shape];
        y = ArrayPad[ConjugatePartition[p], {0, n - Max[p]}];
        Do[
            While[
                i = RandomInteger[{1, First[y]}];
                j = RandomInteger[{1, First[p]}];
                (i > y[[j]]) || (j > p[[i]])
            ];
            While[
                If[(h = y[[j]] + p[[i]] - i - j) != 0,
                    If[RandomChoice[{True, False}],
                        i = RandomInteger[{i, y[[j]]}]
                        ,
                        j = RandomInteger[{j, p[[i]]}]
                    ]
                ];
                h != 0
            ];
            p[[i]]--;
            y[[j]]--;
            y[[m]] = i
            ,
            {m, n, 1, -1}
        ];
        res = Table[Flatten[Position[y, k]], {k, Length[Union[y]]}];
        res /; TableauQ[res]
    ]

RationalNumberRepeatingDecimalPeriod // ClearAll

SetAttributes[RationalNumberRepeatingDecimalPeriod, {NumericFunction,
     Listable}];

RationalNumberRepeatingDecimalPeriod::usage = "RationalNumberRepeatingDecimalPeriod[rational] returns the period of the repeating decimal for rational.";

RationalNumberRepeatingDecimalPeriod[n_Rational] :=
    First[RealDigits[n]] /. {{___, list_?ListQ} :> Length[list], list_
        ?ListQ -> 0}

RationalNumberRepeatingDecimalPeriod[n_Integer?IntegerQ] :=
    0

ReflexiveGraphQ // ClearAll

ReflexiveGraphQ::usage = "ReflexiveGraphQ[g] yields True if the graph g is reflexive and False otherwise.";

ReflexiveGraphQ[g_Graph] :=
    False /; VertexCount[g] == 0

ReflexiveGraphQ[g_Graph] :=
    Module[{e = List @@@ EdgeList[g], i},
        Apply[And, Table[MemberQ[e, {i, i}], {i, VertexList[g]}]]
    ]

SecantNumber // ClearAll

SetAttributes[SecantNumber, {NumericFunction, Listable}]

SecantNumber::usage = "SecantNumber[n] calculates the nth secant number.";

SecantNumber[n_] :=
    Abs[EulerE[2 n]]

ClearAll[iSelectPermutations, SelectPermutations]

SelectPermutations::usage = "SelectPermutations[list, crit] generates a list of all possible permutations of the elements in list satisfying crit.\nSelectPermutations[list, n, crit] gives all permutations containing at most n elements satisfying crit.\nSelectPermutations[list, {n}, crit] gives all permutations containing exactly n elements satisfying crit.\nSelectPermutations[\[Ellipsis], crit, m] gives at most m results.";

iSelectPermutations[list_, nlist_List, crit_, m_:\[Infinity]] :=
    Module[{vars, its, len = Length[list], begin, end, val, found = 0,
         result, broken = False, rules, minindex},
        result =
            Reap[
                Do[
                    If[!broken,
                        Which[
                            numvar > 0,
                                vars = Table[Unique["i"], numvar];
                                begin = ConstantArray[1, Length[vars]
                                    ];
                                end = ConstantArray[len, Length[vars]
                                    ];
                                its = Transpose[{vars, begin, end}];
                                minindex = GatherBy[Transpose[{List @@
                                     list, Range[Length[list]]}], First];
                                minindex = {#[[1, 1]], #[[All, 2]]}& 
                                    /@ minindex;
                                minindex = Association[Rule @@@ minindex
                                    ];
                                If[DuplicateFreeQ[list], (* optimize for lists that are duplicate-free 
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    *)
                                    Do[
                                        If[Unequal @@ vars,
                                            val = Part[list, vars];
                                            If[TrueQ[crit[val]],
                                                found++;
                                                If[found > m,
                                                    broken = True;
                                                    Break[]
                                                ];
                                                Sow[val];
                                            ]
                                        ]
                                        ,
                                        Evaluate[Sequence @@ its]
                                    ]
                                    ,
                                    Do[
                                        If[Unequal @@ vars,
                                            val = Part[list, vars];
                                            rules = Transpose[{vars, 
                                                List @@ val}];
                                            rules = GatherBy[rules, Last
                                                ];
                                            rules = {#[[1, 2]], #[[All,
                                                 1]]}& /@ rules;
                                            rules = (Take[minindex[#1
                                                ], UpTo[Length[#2]]] === #2)& @@@ rules;
                                            rules = And @@ rules;
                                            If[rules,
                                                If[TrueQ[crit[val]],
                                                    found++;
                                                    If[found > m,
                                                        broken = True
                                                            ;
                                                        Break[]
                                                    ];
                                                    Sow[val];
                                                ]
                                            ]
                                        ]
                                        ,
                                        Evaluate[Sequence @@ its]
                                    ]
                                ]
                            ,
                            numvar == 0,
                                val = {};
                                If[TrueQ[crit[val]],
                                    found++;
                                    If[found > m,
                                        broken = True;
                                        Break[]
                                    ];
                                    Sow[val];
                                ]
                        ]
                    ]
                    ,
                    {numvar, nlist}
                ]
            ];
        First[result[[2]], {}]
    ]

SelectPermutations[list : _[___], crit_] :=
    iSelectPermutations[list, {Length[list]}, crit]

SelectPermutations[list : _[___], n_Integer?NonNegative, crit_, m_:\[Infinity]
    ] :=
    iSelectPermutations[list, Range[n], crit, m]

SelectPermutations[list : _[___], {n_Integer?NonNegative}, crit_, m_:
    \[Infinity]] :=
    iSelectPermutations[list, {n}, crit, m]

SelectPermutations[list : _[___], {nmin_Integer?NonNegative, nmax_Integer
    ?NonNegative}, crit_, m_:\[Infinity]] :=
    iSelectPermutations[list, Range[nmin, nmax], crit, m]

SelectPermutations[list : _[___], {nmin_Integer?NonNegative, nmax_Integer
    ?NonNegative, dstep_Integer}, crit_, m_:\[Infinity]] :=
    iSelectPermutations[list, Range[nmin, nmax, dstep], crit, m]

ClearAll[SelectSubsets, expandn, iSelectSubsets]

SelectSubsets::usage = "SelectSubsets[list, crit] gives a list of all possible subsets of list that satisfy the criterion crit.\nSelectSubsets[list, n, crit] gives all subsets containing at most n elements that satisfy crit.\nSelectSubsets[list, {n}, crit] gives all subsets containing exactly n elements that satisfy crit.\nSelectSubsets[list, {nmin, nmax}, crit] gives all subsets containing between nmin and nmax elements that satisfy crit.\nSelectSubsets[list, nspec, crit, s] limits the results to the first s subsets.";

iSelectSubsets[list_List, n_List, crit_, m_:\[Infinity]] :=
    Module[{vars, its, len = Length[list], begin, end, val, found = 0,
         result, broken = False},
        result =
            Reap[
                Table[
                    If[!broken,
                        Which[
                            numvar > 0,
                                vars = Table[Unique["i"], numvar];
                                begin = Prepend[Most[vars] + 1, 1];
                                end = Range[len - numvar + 1, len];
                                its = Transpose[{vars, begin, end}];
                                Do[
                                    val = Part[list, vars];
                                    If[TrueQ[crit[val]],
                                        found++;
                                        If[found > m,
                                            broken = True;
                                            Break[]
                                        ];
                                        Sow[val];
                                    ]
                                    ,
                                    Evaluate[Sequence @@ its]
                                ]
                            ,
                            numvar == 0,
                                val = {};
                                If[TrueQ[crit[val]],
                                    found++;
                                    If[found > m,
                                        broken = True;
                                        Break[]
                                    ];
                                    Sow[val];
                                ]
                        ]
                    ]
                    ,
                    {numvar, n}
                ];
            ];
        First[result[[2]], {}]
    ]

expandn[list_, All] :=
    expandn[list, Length[list]]

expandn[list_, n_Integer?NonNegative] :=
    Range[0, n]

expandn[list_, {n_Integer?NonNegative}] :=
    {n}

expandn[list_, {nmin_Integer?NonNegative, nmax_Integer?NonNegative}] :=
    Range[nmin, nmax]

expandn[list_, {nmin_Integer?NonNegative, nmax_Integer?NonNegative, dn_Integer
    }] :=
    Range[nmin, nmax, dn]

SelectSubsets[list_List, crit_] :=
    iSelectSubsets[list, expandn[list, All], crit]

SelectSubsets[list_List, n_, crit_] :=
    iSelectSubsets[list, expandn[list, n], crit]

SelectSubsets[list_List, n_, crit_, m_:\[Infinity]] :=
    iSelectSubsets[list, expandn[list, n], crit, m]

SelectTuples // ClearAll

SelectTuples::usage = "SelectTuples[list, n, crit] generates a list of n-tuples of elements from list that satisfy crit.\nSelectTuples[{list1, list2, \[Ellipsis]}, crit] generates a list of all possible tuples whose ith element is from listi that satisfy crit.\nSelectTuples[\[Ellipsis], crit, m] picks at most the first m tuples that satisfy crit.";

SelectTuples[list_List, n_Integer?NonNegative, crit_, m_:\[Infinity]] :=
    Module[{len = Length[list], vars, val, its, result, found = 0},
        vars = Table[Unique["i"], n];
        its = {#, len}& /@ vars;
        result =
            Reap[
                Do[
                    val = Part[list, vars];
                    If[TrueQ[crit[val]],
                        found++;
                        If[found > m,
                            Break[]
                        ];
                        Sow[val];
                    ]
                    ,
                    Evaluate[Sequence @@ its]
                ];
            ];
        First[result[[2]], {}]
    ]

SelectTuples[list : {_List...}, crit_, m_:\[Infinity]] :=
    Module[{n = Length[list], lens = Length /@ list, vars, val, its, 
        result, found = 0},
        vars = Table[Unique["i"], n];
        its = Transpose[{vars, lens}];
        result =
            Reap[
                Do[
                    val = MapThread[Part, {list, vars}];
                    If[TrueQ[crit[val]],
                        found++;
                        If[found > m,
                            Break[]
                        ];
                        Sow[val];
                    ]
                    ,
                    Evaluate[Sequence @@ its]
                ];
            ];
        First[result[[2]], {}]
    ]

SelfConjugatePartitionQ // ClearAll

SelfConjugatePartitionQ::usage = "SelfConjugatePartitionQ[partition] returns True when partition is self-conjugate.";

SelfConjugatePartitionQ[partition_?IntegerPartitionQ] :=
    partition === ConjugatePartition[partition]

SignedLahNumber // ClearAll

SetAttributes[SignedLahNumber, {Listable, NumericFunction}]

SignedLahNumber::usage = "SignedLahNumber[n,k] gives the signed Lah number L(n,k).";

SignedLahNumber[n_, k_] :=
    (-1) ^ n Binomial[n - 1, k - 1] n! / k!

standardTableauxAux // ClearAll

standardTableauxAux[incompleteList_, idxToFill_, affectedByList_, minIndTable_,
     maxIndTable_] :=
    Module[{aux, minIndTables, possibilities, possibleFillings, result
        },
        If[Abs[maxIndTable - minIndTable] =!= maxIndTable - minIndTable,
            
            Return[{}, Module]
        ];
        possibleFillings = Complement[Range[minIndTable[[idxToFill]],
             maxIndTable[[idxToFill]]], Take[incompleteList, idxToFill - 1]];
        possibilities =
            Table[
                aux = incompleteList;
                aux[[idxToFill]] = i;
                aux
                ,
                {i, possibleFillings}
            ];
        minIndTables =
            Table[
                aux = minIndTable;
                aux[[affectedByList[[idxToFill]]]] = Table[Max[aux[[el
                    ]], i + 1], {el, affectedByList[[idxToFill]]}];
                aux
                ,
                {i, possibleFillings}
            ];
        If[idxToFill == Length[incompleteList],
            possibilities
            ,
            result = Table[standardTableauxAux[possibilities[[i]], idxToFill
                 + 1, affectedByList, minIndTables[[i]], maxIndTable], {i, Length[possibleFillings
                ]}];
            Flatten[result, 1]
        ]
    ]

StandardYoungTableaux // ClearAll

StandardYoungTableaux::usage = "StandardYoungTableaux[p] generates a list of all standard Young tableaux with shape corresponding to the integer partition p.";

StandardYoungTableaux[partition_] /; IntegerPartitionQ[partition] :=
    Module[{n = Total[partition], affectedByList, canonicalTableaux, 
        canonicalTableauxT, minIndTable, maxIndTable, partitionT},
        partitionT = ConjugatePartition[partition];
        canonicalTableaux = Internal`PartitionRagged[Range[n], partition
            ];
        canonicalTableauxT = Flatten[canonicalTableaux, {{2}, {1}}];
        affectedByList = ConstantArray[{}, n];
        Do[AppendTo[affectedByList[[canonicalTableaux[[i, j - 1]]]], 
            canonicalTableaux[[i, j]]], {i, Length[partition]}, {j, 2, partition[[
            i]]}];
        Do[AppendTo[affectedByList[[canonicalTableauxT[[i, j - 1]]]],
             canonicalTableauxT[[i, j]]], {i, Length[partitionT]}, {j, 2, partitionT
            [[i]]}];
        minIndTable = ConstantArray[1, n];
        maxIndTable = Flatten[Table[Total[Take[partition, i - 1]] + Total[
            Take[partitionT, j - 1]] - (i - 1) (j - 1) + 1, {i, Length[partition]
            }, {j, partition[[i]]}]];
        Internal`PartitionRagged[#, partition]& /@ standardTableauxAux[
            ConstantArray[0, n], 1, affectedByList, minIndTable, maxIndTable]
    ]

functionWithoutVariables[partition_] :=
    Join[{First[partition] * 2 ^ (BitLength[Length[partition]] - 1)},
         Drop[partition, 2 ^ (BitLength[Length[partition]] - 1)]]

NoVariablesOddPartsToDistinctParts[partition_] :=
    ReverseSort[FixedPoint[Catenate[Split[#] /. list : {Repeated[x_, 
        {2, Infinity}]} :> functionWithoutVariables[list]]&, partition]]

StrictIntegerPartitions // ClearAll

StrictIntegerPartitions::usage = "StrictIntegerPartitions[n] gives the strict integer partitions of the strictly positive integer n."(*A strict partition has no distinct parts and no duplicate parts like 1 in {5,3,1,1}.*);

StrictIntegerPartitions[n_Integer?IntegerQ /; Not[n <= 0]] :=
    Reverse[LexicographicSort[Map[NoVariablesOddPartsToDistinctParts][
        IntegerPartitions[n, Infinity, Range[1, n, 2]]]]];

SubsetFromIndex // ClearAll

SubsetFromIndex::usage = "SubsetFromIndex[index, len] returns a subset of length len with given index.";

SubsetFromIndex[index_Integer, len_Integer] :=
    Module[{subset, total, x},
        subset = Table[0, {len}];
        total = index;
        Do[
            subset[[in]] = Ceiling[x /. Flatten[NSolve[{Product[(x - 
                n + 1) / n, {n, 1, in}] == total, x > 0}, x]]] - 1;
            total = total - Binomial[subset[[in]], in]
            ,
            {in, len, 1, -1}
        ];
        subset
    ];

SubsetIndex // ClearAll

SubsetIndex::usage = "SubsetIndex[list] gives the index of subset list.";

SubsetIndex[subset_List] :=
    (Total[MapIndexed[Binomial[#1, #2[[1]]]&, subset]] + 1)

TableauQ // ClearAll

TableauQ::usage = "TableauQ[t] determines if t is a Young tableau.";

TableauQ[{}] = True;

TableauQ[t_] :=
    MatchQ[t, {{__Integer?Positive}..}] && AllTrue[Differences /@ t, 
        Positive, 2] && AllTrue[Differences[Map[Length, t]], NonPositive] &&
        With[{tt = Flatten[t, {{2}, {1}}]},
            AllTrue[Differences /@ tt, Positive, 2] && AllTrue[Differences[
                Map[Length, tt]], NonPositive]
        ];

TableauToPoset // ClearAll

TableauToPoset::usage = "TableauToPoset[young] converts the Young tableau young to a partially ordered set of coordinates.";

TableauToPoset[young_] /; TableauQ[young] :=
    Reverse[Sort[Flatten[MapIndexed[{#1, #2}&, young, {2}], 1]][[All,
         -1]], 2]

TableauxToPermutation // ClearAll

SetAttributes[TableauxToPermutation, {NumericFunction}]

TableauxToPermutation::usage = "TableauxToPermutation[t1, t2] returns the permutation list corresponding to the Young tableaux t1 and t2.";

TableauxToPermutation[p1_, q1_] /; Map[Length, p1] === Map[Length, q1
    ] :=
    Module[{p = p1, q = q1, row, firstrow, col, item},
        Reverse[
            Table[
                firstrow = First[p];
                row = Position[q, Max[q]][[1, 1]];
                item = Last[p[[row]]];
                col = Length[p[[row]]];
                If[col == 1,
                    p = Most[p]
                    ,
                    p[[row]] = Most[p[[row]]]
                ];
                Do[
                    While[p[[rowi, col]] <= item && Length[p[[rowi]]]
                         > col, col++];
                    If[item < p[[rowi, col]],
                        col--
                    ];
                    {item, p[[rowi, col]]} = {p[[rowi, col]], item}
                    ,
                    {rowi, row - 1, 1, -1}
                ];
                q[[row]] = Most[q[[row]]];
                If[p === {},
                    First[firstrow]
                    ,
                    First[Complement[firstrow, First[p]]]
                ]
                ,
                {Total[Map[Length, p1]]}
            ]
        ]
    ]

TangentNumber // ClearAll

SetAttributes[TangentNumber, {NumericFunction, Listable}]

TangentNumber::usage = "TangentNumber[n] calculates the nth tangent number.";

TangentNumber[n_] :=
    (2 ^ (-1 + 2 n) (-1 + 4^n) Abs[BernoulliB[2 n]]) / n

ToInversionVector // ClearAll

ToInversionVector::usage = "ToInversionVector[p] gives the inversion vector of the permutation list p.";

ToInversionVector[p_?PermutationListQ] :=
    Table[Length @ Select[Take[p, InversePermutation[p][[i]]], #1 > i&
        ], {i, Length[p]}]

ClearAll[TransitiveGraphQ, IdenticalGraphsQ, TransitiveClosure]

TransitiveGraphQ::usage = "TransitiveGraphQ[g] yields True if the graph g is transitive and False otherwise.";

IdenticalGraphsQ[g__] :=
    True /; AllTrue[{g}, EmptyGraphQ] && SameQ @@ (VertexList /@ {g})

IdenticalGraphsQ[g__] :=
    False /; !SameQ @@ (UndirectedGraphQ /@ {g})

IdenticalGraphsQ[Pattern[g, BlankSequence[]]] :=
    Apply[
        SameQ
        ,
        List @@@
            Map[
                Function[
                    Sort[
                        Map[
                            If[UndirectedGraphQ[#],
                                Sort
                                ,
                                Identity
                            ]
                            ,
                            EdgeList @ #
                        ]
                    ]
                ]
                ,
                {g}
            ]
    ];

TransitiveGraphQ[g_Graph] :=
    IdenticalGraphsQ[g, TransitiveClosure[g]]

TransitiveClosure[g_Graph] :=
    g /; EmptyGraphQ[g]

TransitiveClosure[g_Graph] :=
    AdjacencyGraph[VertexList[g], TC[Normal @ AdjacencyMatrix[g]], DirectedEdges
         -> DirectedGraphQ[g]]

TC =
    Compile[
        {{e, _Integer, 2}}
        ,
        Module[{ne = e, n = Length[e], i, j, k},
            Do[
                If[ne[[j, i]] != 0,
                    Do[
                        If[ne[[i, k]] != 0,
                            ne[[j, k]] = 1
                        ]
                        ,
                        {k, n}
                    ]
                ]
                ,
                {i, n}
                ,
                {j, n}
            ];
            ne
        ]
    ];

TransposeTableau // ClearAll

TransposeTableau::usage = "TransposeTableau[t] returns the transpose of the Young tableau t.";

TransposeTableau[tb_List] :=
    Flatten[tb, {{2}, {1}}]

TupleFromIndex // ClearAll

TupleFromIndex::usage = "TupleFromIndex[index, k] returns index from the list of k tuples sorted by maximal element.";

TupleFromIndex[index_Integer?IntegerQ, len_Integer?IntegerQ] :=
    Module[{max, div, left, tuple, switch},
        tuple = {};
        max = Floor[N[(index - 1) ^ (1 / len), 300]];
        div = Table[(max + 1) ^ n - (max) ^ n, {n, len - 1, 1, -1}];
        left = index - (max) ^ len - 1;
        switch = False;
        If[index == 1,
            tuple = Table[0, {len}]
            ,
            Do[
                If[switch == False,
                    If[Floor[(left) / div[[k]]] >= max,
                        switch = True;
                        tuple = Append[tuple, max]
                        ,
                        tuple = Append[tuple, Floor[(left) / div[[k]]
                            ]];
                    ];
                    left = left - tuple[[k]] div[[k]];
                ]
                ,
                {k, 1, len - 1}
            ];
            If[switch == False,
                tuple = Append[tuple, max]
                ,
                tuple = Join[tuple, IntegerDigits[left, max + 1, len 
                    - Length[tuple]]]
            ]
        ];
        tuple
    ]

TupleIndex // ClearAll

TupleIndex::usage = "TupleIndex[tuple] returns the index of tuple as it would appear in a list of all integer tuples of the same length, sorted by the maximal element.";

TupleIndex[tuple_List] :=
    Module[{run, max, len, first, div, grow, switch, index},
        run = {};
        max = Max[tuple];
        If[max == 0,
            index = 1
            ,
            len = Length[tuple];
            first = Position[tuple, max][[1, 1]];
            div = Table[(max + 1) ^ n - (max) ^ n, {n, len - 1, 0, -1
                }];
            index = max^len + 1 + FromDigits[Take[tuple, {first + 1, 
                len}], max + 1] + Drop[tuple, {first + 1, len}] . Take[div, first]
        ];
        index
    ];

UnsignedLahNumber // ClearAll

SetAttributes[UnsignedLahNumber, {Listable, NumericFunction}]

UnsignedLahNumber::usage = "UnsignedLahNumber[n,k] gives the unsigned Lah number L(n,k)."

UnsignedLahNumber[n_, k_] :=
    Binomial[n - 1, k - 1] n! / k!

YoungDiagram // ClearAll

YoungDiagram::usage = "YoungDiagram[\[Lambda]] gives a Young diagram for the partition \[Lambda] with empty boxes.";

YoungDiagram[list_] :=
    Grid[
        ConstantArray["", #]& /@ list
        ,
        Frame ->
            Join[
                {None}
                ,
                {None}
                ,
                {
                    Flatten[
                        With[{cc = Range @ #& /@ list},
                            Table[Flatten[{nn, #} -> True& /@ cc[[nn]],
                                 1], {nn, Length @ cc}]
                        ]
                        ,
                        1
                    ]
                }
            ]
        ,
        ItemSize -> {1.5, 1.5}
    ]

ZeckendorfRepresentation // ClearAll

SetAttributes[ZeckendorfRepresentation, {Listable, NumericFunction}]

ZeckendorfRepresentation::usage = "ZeckendorfRepresentation[n] gives the 0-1 list that indicates the unique nonconsecutive Fibonacci numbers that sum to the non-negative integer n.";

ZeckendorfRepresentation[(n_Integer) ? (#1 >= 0&)] :=
    Module[{i, k, l, m, addon, r},
        k = 0;
        If[n == 0,
            r = {0}
            ,
            If[n == 1,
                r = {1}
                ,
                l = LeadingIndex[n];
                m = n - Fibonacci[l];
                k = LeadingIndex[m];
                addon = Flatten[{1, Table[0, {i, k + 2, l}]}];
                r = Flatten[{addon, ZeckendorfRepresentation[m]}]
            ]
        ];
        r
    ]

LeadingIndex[(n_Integer) ? (#1 >= 0&)] :=
    Module[{k},
        If[n == 0,
            k = 2
            ,
            For[k = 2, Fibonacci[k] <= n, k++];
            k--;
        ];
        k
    ]



(* ::Section:: *)
(*Package Footer*)


End[]

EndPackage[];
