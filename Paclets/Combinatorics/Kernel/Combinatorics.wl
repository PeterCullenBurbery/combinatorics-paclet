(* ::Package:: *)

(* <<PeterBurbery`Combinatorics`CanonicalMultiset`;

<<PeterBurbery`Combinatorics`CentralBinomialCoefficient`;

<<PeterBurbery`Combinatorics`ConjugatePartition`;

<<PeterBurbery`Combinatorics`DescendingSublists`;

<<PeterBurbery`Combinatorics`DivisorHasseDiagram`;

<<PeterBurbery`Combinatorics`DominatingIntegerPartitionQ`;

<<PeterBurbery`Combinatorics`DurfeeSquare`;

<<PeterBurbery`Combinatorics`EnumerateMultisetPartialDerangements`;

<<PeterBurbery`Combinatorics`EulerianCatalanNumber`;

<<PeterBurbery`Combinatorics`EulerianNumber`;

<<PeterBurbery`Combinatorics`EulerianNumberOfTheSecondKind`;

<<PeterBurbery`Combinatorics`FerrersDiagram`;

<<PeterBurbery`Combinatorics`Fibbinary`;

<<PeterBurbery`Combinatorics`FibonacciEncode`;

<<PeterBurbery`Combinatorics`FrobeniusSymbolFromPartition`;

<<PeterBurbery`Combinatorics`FromInversionVector`;

<<PeterBurbery`Combinatorics`GaussFactorial`;

<<PeterBurbery`Combinatorics`GrayCode`;

<<PeterBurbery`Combinatorics`HasseDiagram`;

<<PeterBurbery`Combinatorics`HookLengths`;

<<PeterBurbery`Combinatorics`HuffmanCodeWords`;

<<PeterBurbery`Combinatorics`HuffmanDecode`;

<<PeterBurbery`Combinatorics`HuffmanEncode`;

<<PeterBurbery`Combinatorics`IntegerPartitionQ`;

<<PeterBurbery`Combinatorics`InverseFibonacci`;

<<PeterBurbery`Combinatorics`InverseGrayCode`;

<<PeterBurbery`Combinatorics`InversionCount`;

<<PeterBurbery`Combinatorics`InversionVectorQ`;

<<PeterBurbery`Combinatorics`LehmerCodeFromIndex`;

<<PeterBurbery`Combinatorics`LehmerCodeFromPermutation`;

<<PeterBurbery`Combinatorics`LucasNumberU1`;

<<PeterBurbery`Combinatorics`LucasNumberV2`;

<<PeterBurbery`Combinatorics`Multichoose`;

<<PeterBurbery`Combinatorics`MultisetAssociation`;

<<PeterBurbery`Combinatorics`MultisetCardinality`;

<<PeterBurbery`Combinatorics`MultisetPartialDerangements`;

<<PeterBurbery`Combinatorics`NarayanaNumber`;

<<PeterBurbery`Combinatorics`NDigitNumbers`;

<<PeterBurbery`Combinatorics`NextPermutation`;

<<PeterBurbery`Combinatorics`NumberOfTableaux`;

<<PeterBurbery`Combinatorics`OrderedTupleFromIndex`;

<<PeterBurbery`Combinatorics`OrderedTupleIndex`;

<<PeterBurbery`Combinatorics`OrderlessCombinations`;

<<PeterBurbery`Combinatorics`OrderlessCombinationsOfUnmarkedElements`;

<<PeterBurbery`Combinatorics`PartialDerangements`;

<<PeterBurbery`Combinatorics`PartialOrderGraphQ`;

<<PeterBurbery`Combinatorics`PartitionCrank`;

<<PeterBurbery`Combinatorics`PartitionFromFrobeniusSymbol`;

<<PeterBurbery`Combinatorics`PartitionRank`;

<<PeterBurbery`Combinatorics`PermutationAscents`;

<<PeterBurbery`Combinatorics`PermutationCountByInversions`;

<<PeterBurbery`Combinatorics`PermutationFromIndex`;

<<PeterBurbery`Combinatorics`PermutationFromLehmerCode`;

<<PeterBurbery`Combinatorics`PermutationGraph`;

<<PeterBurbery`Combinatorics`PermutationIndex`;

<<PeterBurbery`Combinatorics`PermutationMajorIndex`;

<<PeterBurbery`Combinatorics`PermutationToTableaux`;

<<PeterBurbery`Combinatorics`Phitorial`;

<<PeterBurbery`Combinatorics`PosetQ`;

<<PeterBurbery`Combinatorics`PosetToTableau`;

<<PeterBurbery`Combinatorics`Primorial`;

<<PeterBurbery`Combinatorics`QExponential`;

<<PeterBurbery`Combinatorics`QMultinomial`;

<<PeterBurbery`Combinatorics`RandomSelfConjugatePartition`;

<<PeterBurbery`Combinatorics`RandomYoungTableau`;

<<PeterBurbery`Combinatorics`RationalNumberRepeatingDecimalPeriod`;

<<PeterBurbery`Combinatorics`ReflexiveGraphQ`;

<<PeterBurbery`Combinatorics`SecantNumber`;

<<PeterBurbery`Combinatorics`SelectPermutations`;

<<PeterBurbery`Combinatorics`SelectSubsets`;

<<PeterBurbery`Combinatorics`SelectTuples`;

<<PeterBurbery`Combinatorics`SelfConjugatePartitionQ`;

<<PeterBurbery`Combinatorics`SignedLahNumber`;

<<PeterBurbery`Combinatorics`StandardYoungTableaux`;

<<PeterBurbery`Combinatorics`SubsetFromIndex`;

<<PeterBurbery`Combinatorics`SubsetIndex`;

<<PeterBurbery`Combinatorics`TableauQ`;

<<PeterBurbery`Combinatorics`TableauToPoset`;

<<PeterBurbery`Combinatorics`TableauxToPermutation`;

<<PeterBurbery`Combinatorics`TangentNumber`;

<<PeterBurbery`Combinatorics`ToInversionVector`;

<<PeterBurbery`Combinatorics`TransitiveGraphQ`;

<<PeterBurbery`Combinatorics`TransposeTableau`;

<<PeterBurbery`Combinatorics`TupleFromIndex`;

<<PeterBurbery`Combinatorics`TupleIndex`;

<<PeterBurbery`Combinatorics`UnsignedLahNumber`;

<<PeterBurbery`Combinatorics`ZeckendorfRepresentation`; *)



(* ::Package:: *)
(**)


(* ::Section:: *)
(*Package Header*)


BeginPackage["PeterBurbery`Combinatorics`"];



(* ::Text:: *)
(*Declare your public symbols here:*)


(*PacletDirectoryLoad[NotebookDirectory[]]

Get /@ Cases[Except[NotebookFileName[]]]@FileNames[All, NotebookDirectory[]]
*)

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

PeterBurbery`Combinatorics`FrobeniusSymbolFromPartition;

PeterBurbery`Combinatorics`FromInversionVector;

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

PeterBurbery`Combinatorics`Multichoose;

PeterBurbery`Combinatorics`MultisetAssociation;

PeterBurbery`Combinatorics`MultisetCardinality;

PeterBurbery`Combinatorics`MultisetPartialDerangements;

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

PeterBurbery`Combinatorics`PartitionRank;

PeterBurbery`Combinatorics`PermutationAscents;

PeterBurbery`Combinatorics`PermutationCountByInversions;

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

PeterBurbery`Combinatorics`ZeckendorfRepresentation;

Begin["`Private`"];



(* ::Section:: *)
(*Definitions*)


(* ::Text:: *)
(*Define your public and private symbols here:*)


(*CompoundExpression@@{AppendTo[CloudExpression["monitoring list"],DateObject[]],PacletDirectoryLoad["C:\\Users\\Peter\\AppData\\Roaming\\Mathematica\\Paclets\\Repository\\PeterBurbery__Combinatorics-2.0.5"](*NotebookDirectory[]*),Get/@Cases[Except["C:\\Users\\Peter\\AppData\\Roaming\\Mathematica\\Paclets\\Repository\\PeterBurbery__Combinatorics-2.0.5\\Combinatorics.wl"]]@FileNames[All,"C:\\Users\\Peter\\AppData\\Roaming\\Mathematica\\Paclets\\Repository\\PeterBurbery__Combinatorics-2.0.5"],Null}*)

(* 
PeterBurbery`Combinatorics`CanonicalMultiset // ClearAll

PeterBurbery`Combinatorics`CanonicalMultiset::usage = "CanonicalMultiset[multiset] replaces all elements in multiset with integers.";

PeterBurbery`Combinatorics`CanonicalMultiset[PeterBurbery`Combinatorics`CanonicalMultiset`Private`multiset_
    ] :=
    Module[{PeterBurbery`Combinatorics`CanonicalMultiset`Private`multisetSupport
        },
        PeterBurbery`Combinatorics`CanonicalMultiset`Private`multisetSupport
             = Union[PeterBurbery`Combinatorics`CanonicalMultiset`Private`multiset
            ];
        PeterBurbery`Combinatorics`CanonicalMultiset`Private`multiset
             /. Thread[PeterBurbery`Combinatorics`CanonicalMultiset`Private`multisetSupport
             -> Range[Length[PeterBurbery`Combinatorics`CanonicalMultiset`Private`multisetSupport
            ]]]
    ]

PeterBurbery`Combinatorics`CentralBinomialCoefficient // ClearAll

SetAttributes[PeterBurbery`Combinatorics`CentralBinomialCoefficient, 
    {NumericFunction, Listable}]

PeterBurbery`Combinatorics`CentralBinomialCoefficient::usage = "CentralBinomialCoefficient[n] calculates the nth central binomial coefficient.";

PeterBurbery`Combinatorics`CentralBinomialCoefficient[PeterBurbery`Combinatorics`CentralBinomialCoefficient`Private`n_
    ] :=
    Binomial[2 PeterBurbery`Combinatorics`CentralBinomialCoefficient`Private`n,
         PeterBurbery`Combinatorics`CentralBinomialCoefficient`Private`n]

PeterBurbery`Combinatorics`ConjugatePartition // ClearAll

PeterBurbery`Combinatorics`ConjugatePartition::usage = "ConjugatePartition[p] gives the partition that transposes the rows and columns of the integer partition p.";

PeterBurbery`Combinatorics`ConjugatePartition[PeterBurbery`Combinatorics`ConjugatePartition`Private`p_
    ] /; PeterBurbery`Combinatorics`IntegerPartitionQ[PeterBurbery`Combinatorics`ConjugatePartition`Private`p
    ] :=
    Total[UnitStep[Outer[Plus, PeterBurbery`Combinatorics`ConjugatePartition`Private`p,
         -Range[First[PeterBurbery`Combinatorics`ConjugatePartition`Private`p
        ]]]]]

PeterBurbery`Combinatorics`DescendingSublists // ClearAll

PeterBurbery`Combinatorics`DescendingSublists::usage = "DescendingSublists[list] makes sublists of list starting at its left-to-right maxima.";

PeterBurbery`Combinatorics`DescendingSublists[PeterBurbery`Combinatorics`DescendingSublists`Private`list_
    ] :=
    TakeList[PeterBurbery`Combinatorics`DescendingSublists`Private`list,
         Length /@ Split[Max /@ Table[Take[PeterBurbery`Combinatorics`DescendingSublists`Private`list,
         PeterBurbery`Combinatorics`DescendingSublists`Private`n], {PeterBurbery`Combinatorics`DescendingSublists`Private`n,
         Length @ PeterBurbery`Combinatorics`DescendingSublists`Private`list}
        ]]]

PeterBurbery`Combinatorics`DivisorHasseDiagram // ClearAll

PeterBurbery`Combinatorics`DivisorHasseDiagram::usage = "DivisorHasseDiagram[n] gives a Hasse diagram based on the divisors of n, represented as a Graph.";

Options[PeterBurbery`Combinatorics`DivisorHasseDiagram] = Options[Graph
    ];

PeterBurbery`Combinatorics`DivisorHasseDiagram[PeterBurbery`Combinatorics`DivisorHasseDiagram`Private`n_Integer
    ?Positive, PeterBurbery`Combinatorics`DivisorHasseDiagram`Private`opt
     : OptionsPattern[]] :=
    Module[{PeterBurbery`Combinatorics`DivisorHasseDiagram`Private`divisors
         = Divisors[PeterBurbery`Combinatorics`DivisorHasseDiagram`Private`n],
         PeterBurbery`Combinatorics`DivisorHasseDiagram`Private`links},
        PeterBurbery`Combinatorics`DivisorHasseDiagram`Private`links 
            =
            Reap[
                    Do[
                        If[PeterBurbery`Combinatorics`DivisorHasseDiagram`Private`a
                             > PeterBurbery`Combinatorics`DivisorHasseDiagram`Private`b && Divisible[
                            PeterBurbery`Combinatorics`DivisorHasseDiagram`Private`a, PeterBurbery`Combinatorics`DivisorHasseDiagram`Private`b
                            ],
                            Sow[PeterBurbery`Combinatorics`DivisorHasseDiagram`Private`a
                                 \[DirectedEdge] PeterBurbery`Combinatorics`DivisorHasseDiagram`Private`b
                                ]
                        ]
                        ,
                        {PeterBurbery`Combinatorics`DivisorHasseDiagram`Private`a,
                             PeterBurbery`Combinatorics`DivisorHasseDiagram`Private`divisors}
                        ,
                        {PeterBurbery`Combinatorics`DivisorHasseDiagram`Private`b,
                             PeterBurbery`Combinatorics`DivisorHasseDiagram`Private`divisors}
                    ];
                    Nothing
                ] // Flatten;
        TransitiveReductionGraph[PeterBurbery`Combinatorics`DivisorHasseDiagram`Private`links,
             Evaluate @ FilterRules[{PeterBurbery`Combinatorics`DivisorHasseDiagram`Private`opt
            }, Options[Graph]]]
    ]

PeterBurbery`Combinatorics`DominatingIntegerPartitionQ // ClearAll

PeterBurbery`Combinatorics`DominatingIntegerPartitionQ::usage = "DominatingIntegerPartitionQ[p, q] yields True if integer partition p dominates integer partition q and False otherwise.";

PeterBurbery`Combinatorics`DominatingIntegerPartitionQ[PeterBurbery`Combinatorics`DominatingIntegerPartitionQ`Private`a_,
     PeterBurbery`Combinatorics`DominatingIntegerPartitionQ`Private`b_] /;
     PeterBurbery`Combinatorics`IntegerPartitionQ[PeterBurbery`Combinatorics`DominatingIntegerPartitionQ`Private`a
    ] && PeterBurbery`Combinatorics`IntegerPartitionQ[PeterBurbery`Combinatorics`DominatingIntegerPartitionQ`Private`b
    ] && Total[PeterBurbery`Combinatorics`DominatingIntegerPartitionQ`Private`a
    ] == Total[PeterBurbery`Combinatorics`DominatingIntegerPartitionQ`Private`b
    ] :=
    (Length[PeterBurbery`Combinatorics`DominatingIntegerPartitionQ`Private`a
        ] <= Length[PeterBurbery`Combinatorics`DominatingIntegerPartitionQ`Private`b
        ]) &&
        With[{PeterBurbery`Combinatorics`DominatingIntegerPartitionQ`Private`aa
             = Accumulate[PeterBurbery`Combinatorics`DominatingIntegerPartitionQ`Private`a
            ], PeterBurbery`Combinatorics`DominatingIntegerPartitionQ`Private`bb 
            = Accumulate[Take[PeterBurbery`Combinatorics`DominatingIntegerPartitionQ`Private`b,
             Length[PeterBurbery`Combinatorics`DominatingIntegerPartitionQ`Private`a
            ]]]},
            VectorQ[PeterBurbery`Combinatorics`DominatingIntegerPartitionQ`Private`aa
                 - PeterBurbery`Combinatorics`DominatingIntegerPartitionQ`Private`bb,
                 NonNegative]
        ] *)

(*PeterBurbery`Combinatorics`DurfeeSquare // ClearAll

PeterBurbery`Combinatorics`DurfeeSquare::usage="DurfeeSquare[p] gives the number of rows involved in the Durfee square of partition p, the side of the largest-sized square contained within the Ferrers diagram of p.";

PeterBurbery`Combinatorics`DurfeeSquare[{}] = 0
 
PeterBurbery`Combinatorics`DurfeeSquare[PeterBurbery`Combinatorics`Private`s_List] := 
 Module[{PeterBurbery`Combinatorics`Private`i, PeterBurbery`Combinatorics`Private`max = 1}, 
   Do[If[PeterBurbery`Combinatorics`Private`s[[PeterBurbery`Combinatorics`Private`i]] >= PeterBurbery`Combinatorics`Private`i, PeterBurbery`Combinatorics`Private`max = PeterBurbery`Combinatorics`Private`i], {PeterBurbery`Combinatorics`Private`i, 2, Min[Length[PeterBurbery`Combinatorics`Private`s], First[PeterBurbery`Combinatorics`Private`s]]}]; 
   PeterBurbery`Combinatorics`Private`max] /; PeterBurbery`Combinatorics`IntegerPartitionQ[PeterBurbery`Combinatorics`Private`s]
       
PeterBurbery`Combinatorics`EnumerateMultisetPartialDerangements // ClearAll

PeterBurbery`Combinatorics`EnumerateMultisetPartialDerangements`Private`DerangementsCount // ClearAll

PeterBurbery`Combinatorics`EnumerateMultisetPartialDerangements`Private`DerangementsCount[nvec_List] :=
    Integrate[Exp[-x] Times @@ (LaguerreL[nvec, x]), {x, 0, \[Infinity]
        }]

PeterBurbery`Combinatorics`EnumerateMultisetPartialDerangements`Private`vCounts // ClearAll

PeterBurbery`Combinatorics`EnumerateMultisetPartialDerangements`Private`vCounts[lst_, nfixed_] :=
    Counts @ Map[Sort @* Values @* Counts] @ Subsets[lst, {Length @ lst
         - nfixed}]

PeterBurbery`Combinatorics`EnumerateMultisetPartialDerangements::usage = "EnumerateMultisetPartialDerangements[multiset] enumerates the number of derangements of a multiset with 0 fixed points.EnumerateMultisetPartialDerangements[multiset, nfixed] enumerates the number of partial derangements of a multiset with nfixed fixed points.";

PeterBurbery`Combinatorics`EnumerateMultisetPartialDerangements[multiset_, Optional[nfixed_Integer ? (IntegerQ[
    #] && # \[Element] NonNegativeIntegers&),0]] /; nfixed <= Length[multiset
    ] :=
    Abs @ Total @ KeyValueMap[#2 PeterBurbery`Combinatorics`EnumerateMultisetPartialDerangements`Private`DerangementsCount @ #&] @ PeterBurbery`Combinatorics`EnumerateMultisetPartialDerangements`Private`vCounts[multiset,
         nf;
         
 PeterBurbery`Combinatorics`EulerianCatalanNumber // ClearAll;

SetAttributes[PeterBurbery`Combinatorics`EulerianCatalanNumber, {NumericFunction, Listable}];

PeterBurbery`Combinatorics`EulerianCatalanNumber::usage = "EulerianCatalanNumber[n] calculates the nth Eulerian Catalan number.";

PeterBurbery`Combinatorics`EulerianCatalanNumber[n_] :=
    1 / (n + 1) PeterBurbery`Combinatorics`EulerianNumber[2 n + 1, n];


PeterBurbery`Combinatorics`EulerianNumber//ClearAll;

SetAttributes[PeterBurbery`Combinatorics`EulerianNumber,{Listable,NumericFunction}];

PeterBurbery`Combinatorics`EulerianNumber::usage="EulerianNumber[n, k] gives the number of permutations of the numbers 1 to n in which exactly k elements are greater than the previous element (permutations with k \"ascents\")";
(*This definition is based on the ResourceFunction EulerianNumber from https://resources.wolframcloud.com/FunctionRepository/resources/EulerianNumber/?i=EulerianNumber&searchapi=https%3A%2F%2Fresources.wolframcloud.com%2FFunctionRepository%2Fsearch*)

PeterBurbery`Combinatorics`EulerianNumber[n_,k_]:=Module[{x},SeriesCoefficient[(1-x)^(n+1) PolyLog[-n,x],{x,0,k}]];

PeterBurbery`Combinatorics`EulerianNumberOfTheSecondKind // ClearAll;

SetAttributes[PeterBurbery`Combinatorics`EulerianNumberOfTheSecondKind, {Listable, 
  NumericFunction}];

PeterBurbery`Combinatorics`EulerianNumberOfTheSecondKind::usage = 
  "EulerianNumberOfTheSecondKind[n, m]number of all such permutations \
of the multiset where there are two of every element with exactly km \
ascents.";

PeterBurbery`Combinatorics`EulerianNumberOfTheSecondKind[n_, m_] := 0 /; Or @@ {m >= n, n === 0};

PeterBurbery`Combinatorics`EulerianNumberOfTheSecondKind[n_, m_] /; m === 0 := 1;

PeterBurbery`Combinatorics`EulerianNumberOfTheSecondKind[n_, k_] := 
 PeterBurbery`Combinatorics`EulerianNumberOfTheSecondKind[n, 
   k] = (2 n - k - 1) PeterBurbery`Combinatorics`EulerianNumberOfTheSecondKind[n - 1, 
     k - 1] + (k + 1) PeterBurbery`Combinatorics`EulerianNumberOfTheSecondKind[n - 1, k];
*)

(* PeterBurbery`Combinatorics`IntegerPartitionQ // ClearAll;

PeterBurbery`Combinatorics`IntegerPartitionQ::usage = "IntegerPartitionQ[x] checks whether x is a weakly decreasing list of positive integers.\nIntegerPartitionQ[x,n] checks whether x is an integer partition of n.";

PeterBurbery`Combinatorics`IntegerPartitionQ[x_] :=
    VectorQ[x, Internal`PositiveIntegerQ] && VectorQ[Differences[x], 
        Internal`NonPositiveIntegerQ];

PeterBurbery`Combinatorics`IntegerPartitionQ[x_, n_] :=
    IntegerQ[n] && IntegerPartitionQ[x] && Total[x] == n *)

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

ConjugatePartition::usage="ConjugatePartition[p] gives the partition that transposes the rows and columns of the integer partition p.";

ConjugatePartition[p_]/;IntegerPartitionQ[p]:=Total[UnitStep[Outer[Plus,p,-Range[First[p]]]]]
DescendingSublists//ClearAll

DescendingSublists::usage="DescendingSublists[list] makes sublists of list starting at its left-to-right maxima.";

DescendingSublists[list_]:=TakeList[list,Length/@Split[Max/@Table[Take[list,n],{n,Length@list}]]]
DivisorHasseDiagram//ClearAll

DivisorHasseDiagram::usage="DivisorHasseDiagram[n] gives a Hasse diagram based on the divisors of n, represented as a Graph.";

Options[DivisorHasseDiagram]=Options[Graph];

DivisorHasseDiagram[n_Integer?Positive,opt:OptionsPattern[]]:=Module[{divisors=Divisors[n],links},
links=Reap[Do[If[a>b&&Divisible[a,b],Sow[a\[DirectedEdge]b]],{a,divisors},{b,divisors}];Nothing]//Flatten;
TransitiveReductionGraph[links,Evaluate@FilterRules[{opt},Options[Graph]]]
]
DominatingIntegerPartitionQ//ClearAll

DominatingIntegerPartitionQ::usage="DominatingIntegerPartitionQ[p, q] yields True if integer partition p dominates integer partition q and False otherwise.";

DominatingIntegerPartitionQ[a_,b_]/;IntegerPartitionQ[a]&&IntegerPartitionQ[b]&&Total[a]==Total[b]:=(Length[a]<=Length[b])&&With[{aa=Accumulate[a],bb=Accumulate[Take[b,Length[a]]]},VectorQ[aa-bb,NonNegative]]
DurfeeSquare // ClearAll

DurfeeSquare::usage="DurfeeSquare[p] gives the number of rows involved in the Durfee square of partition p, the side of the largest-sized square contained within the Ferrers diagram of p.";

DurfeeSquare[{}] = 0
 
DurfeeSquare[s_List] := 
 Module[{i, max = 1}, 
   Do[If[s[[i]] >= i, max = i], {i, 2, Min[Length[s], First[s]]}]; 
   max] /; PeterBurbery`Combinatorics`IntegerPartitionQ[s]
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

EnumerateMultisetPartialDerangements[multiset_, Optional[nfixed_Integer ? (IntegerQ[
    #] && # \[Element] NonNegativeIntegers&),0]] /; nfixed <= Length[multiset
    ] :=
    Abs @ Total @ KeyValueMap[#2 DerangementsCount @ #&] @ vCounts[multiset,
         nfixed]
EulerianCatalanNumber // ClearAll

SetAttributes[EulerianCatalanNumber, {NumericFunction, Listable}]

EulerianCatalanNumber::usage = "EulerianCatalanNumber[n] calculates the nth Eulerian Catalan number.";

EulerianCatalanNumber[n_] :=
    1 / (n + 1) PeterBurbery`Combinatorics`EulerianNumber[2 n + 1, n]
         
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

SetAttributes[EulerianNumberOfTheSecondKind, {Listable, 
  NumericFunction}]

EulerianNumberOfTheSecondKind::usage = 
  "EulerianNumberOfTheSecondKind[n, m]number of all such permutations \
of the multiset where there are two of every element with exactly km \
ascents.";

EulerianNumberOfTheSecondKind[n_, m_] := 0 /; Or @@ {m >= n, n === 0}

EulerianNumberOfTheSecondKind[n_, m_] /; m === 0 := 1

EulerianNumberOfTheSecondKind[n_, k_] := 
 EulerianNumberOfTheSecondKind[n, 
   k] = (2 n - k - 1) EulerianNumberOfTheSecondKind[n - 1, 
     k - 1] + (k + 1) EulerianNumberOfTheSecondKind[n - 1, k]
FerrersDiagram//ClearAll

FerrersDiagram::usage="FerrersDiagram[p] gives a ragged array of dots, with the number of dots in each row equal to a corresponding part of the integer partition p.";

FerrersDiagram@p_:=Grid[Table["\[FilledCircle]",#]&/@p]/;IntegerPartitionQ@p
Fibbinary // ClearAll

Fibbinary::usage="Fibbinary[n] gives the nth fibbinary number.\nFibbinary[{n}] gives a list of fibbinary numbers less than or equal to n.";

SetAttributes[Fibbinary, {NumericFunction}]

nextFibbinary[x_]:=With[{y=BitNot[BitShiftRight[x]]},BitAnd[x-y,y]]

Fibbinary[0]=0;
Fibbinary[n_Integer?Positive]:=Fibbinary[n]=nextFibbinary[Fibbinary[n-1]]
 
Fibbinary[{n_Integer?Positive}]:=With[{r=Range[n]},Pick[r,BitAnd[r,2 r],0]]
(* (* slower, but uses less memory *)
Fibbinary[{n_Integer?Positive}]:=NestWhileList[nextFibbinary,1,#<=n&,1,Infinity,-1]*)
FibonacciEncode // ClearAll

FibonacciEncode::usage="FibonacciEncode[n] gives the nth FibonacciEncode number.\nFibonacciEncode[{n}] gives a list of FibonacciEncode numbers less than or equal to n.";

SetAttributes[FibonacciEncode, {NumericFunction}]

nextFibonacciEncode[x_]:=With[{y=BitNot[BitShiftRight[x]]},BitAnd[x-y,y]]

FibonacciEncode[0]=0;
FibonacciEncode[n_Integer?Positive]:=FibonacciEncode[n]=nextFibonacciEncode[FibonacciEncode[n-1]]
 
FibonacciEncode[{n_Integer?Positive}]:=With[{r=Range[n]},Pick[r,BitAnd[r,2 r],0]]
(* (* slower, but uses less memory *)
FibonacciEncode[{n_Integer?Positive}]:=NestWhileList[nextFibonacciEncode,1,#<=n&,1,Infinity,-1]*)
FrobeniusSymbolFromPartition // ClearAll

FrobeniusSymbolFromPartition::usage = "FrobeniusSymbolFromPartition[p] gives a pair of lists that count dots in the rows and columns relative to the diagonal of the Durfee square in the Ferrers diagram of the partition p.";

FrobeniusSymbolFromPartition[x_] :=
    Module[{d = DurfeeSquare[x]},
            {Take[x, d] - Range[d], Take[ConjugatePartition[x], d] - 
                Range[d]}
        ] /; IntegerPartitionQ[x]
FromInversionVector//ClearAll

FromInversionVector::usage="FromInversionVector[vect] constructs the permutation list corresponding to the inversion vector vect.";

FromInversionVector[vec_?(InversionVectorQ)]:=Module[{n=Length[vec],i,p},
p={n};Do[p=Insert[p,i,vec[[i]]+1],{i,n-1,1,-1}];p]
GaussFactorial//ClearAll

SetAttributes[GaussFactorial,{Listable,NumericFunction}]

GaussFactorial::usage="GaussFactorial[n,k] computes the Gauss factorial N_k!";
(*When we do GaussFactorial[N,n] we have N_n!, the phitorial*)
GaussFactorial[n_Integer?IntegerQ/;1<=n,k_]:=Times@@Select[CoprimeQ[#,k]&][Range[n]]
GrayCode // ClearAll

Attributes[GrayCode] = { Listable };

GrayCode::usage="GrayCode[n] gives the Gray code of the integer n.";

GrayCode[ n_Integer?(IntegerQ [#]&& NonNegative[#]&) ] := IntegerDigits[ BitXor[ n, BitShiftRight[ n, 1 ]], 2 ]
HasseDiagram//ClearAll

HasseDiagram::usage="HasseDiagram[f,s] constructs a Hasse diagram of the partial order set (poset) defined by the binary relation f and set s.";

Options[HasseDiagram]=Options[Graph];

HasseDiagram[f_,s_List,opts:OptionsPattern[]]:=TransitiveReductionGraph[RelationGraph[f,s,opts]]

HookLengths//ClearAll

HookLengths::usage="HookLengths[p] gives a list of lists of lengths of p for a partition p where an entry is the hook length in the corresponding cell in the Young tableau of p.";

HookLengths[partition_]/;IntegerPartitionQ[partition]:=With[{partitionT=ConjugatePartition[partition]},
Table[partition[[i]]+partitionT[[j]]-i-j+1,{i,Length[partition]},{j,partition[[i]]}]]

HuffmanCodeWords // ClearAll

HuffmanCodeWords::usage="HuffmanCodeWords[list] gives optimal binary Huffman code words corresponding to probabilities in list.";

HuffmanCodeWords[p_ /; VectorQ[p, NumericQ]] := 
 Sort[Flatten[
     MapIndexed[Rule, 
      FixedPoint[
        Replace[Sort[#1], {{p0_, i0_}, {p1_, i1_}, 
            pi___} :> {{p0 + p1, {i0, i1}}, pi}] &, 
        MapIndexed[List, Normalize[p, Total]]][[1, 2]], {-1}]]][[
   All, -1, ;; -2]] - 1

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

HuffmanEncode//ClearAll

HuffmanEncode::usage="HuffmanEncode[string] gives an optimal binary Huffman encoding for string.";

HuffmanEncode[d_] /; MatchQ[d, {__String}] := 
 Module[{chars = Union[d], code},
  code = 
   HuffmanCodeWords[(Count[d, #1] & /@ chars)/
     Length[d]];
  <|"Symbols" -> chars, "CodeWords" -> code, 
   "Encoding" -> Flatten[d /. MapThread[Rule, {chars, code}]]|>]
 
HuffmanEncode[s_String] := HuffmanEncode[Characters[s]]
IntegerPartitionQ // ClearAll

IntegerPartitionQ::usage="IntegerPartitionQ[x] checks whether x is a weakly decreasing list of positive integers.\nIntegerPartitionQ[x,n] checks whether x is an integer partition of n.";

IntegerPartitionQ[x_] := 
 VectorQ[x, Internal`PositiveIntegerQ] && 
  VectorQ[Differences[x], Internal`NonPositiveIntegerQ]
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

InverseGrayCode::usage="InverseGrayCode[{b1,b2,\[Ellipsis]}] gives the integer corresponding to the Gray code represented by the bits bi.";

InverseGrayCode[v:{(0|1)..}]:=iInverseGrayCode[v]

iInverseGrayCode[v_]:=If[Length[v]<1.2*2^16(* empirically found threshold *),
iInverseGrayCodeSmall[v],
iInverseGrayCodeBig[v]]

iInverseGrayCodeSmall[v_]:=
With[{n=FromDigits[v,2]},Fold[BitXor,n,BitShiftRight[n,Range[Length[v]-1]]]]

iInverseGrayCodeBig[v_]:=Module[{n=FromDigits[v,2],res},
res=n;
Do[n=BitShiftRight[n];
res=BitXor[res,n],
{Length[v]-1}];
res]
InversionCount//ClearAll

InversionCount::usage="InversionCount[p] counts the number of inversions in permutation p.";

InversionCount[{}]:=0

InversionCount[p_?PermutationListQ]:=Total[ToInversionVector[p]]
InversionVectorQ//ClearAll

InversionVectorQ::usage="InversionVectorQ[iv] checks if iv is the inversion vector of a permutation list.";

InversionVectorQ@iv_:=And@@Thread[GreaterEqual[Range[0,-1+Length@iv],Reverse@iv]]

LehmerCodeFromIndex // ClearAll

LehmerCodeFromIndex[index_Integer?IntegerQ, length_Integer?IntegerQ] :=
    Reverse[Last /@ FoldList[{Floor[#1[[1]] / #2], Mod[#1[[1]], #2]}&,
         {index - 1, 0}, Range[2, length]]]

LehmerCodeFromPermutation // ClearAll

LehmerCodeFromPermutation::usage = "LehmerCodeFromPermutation[perm] creates the Lehmer code corresponding to permutation perm.";

LehmerCodeFromPermutation[perm_List] :=
    Flatten[Table[Position[Sort[Drop[perm, n - 1]], perm[[n]]] - 1, {
        n, 1, Length[perm]}]]
LucasNumberU1//ClearAll

SetAttributes[LucasNumberU1,{NumericFunction,Listable}]

LucasNumberU1::usage="LucasNumberU1[n, p, q] calculates the term of the Lucas sequence of the first kind U_n(p, q).";

LucasNumberU1[0,p_,q_]:=0;

LucasNumberU1[1,p_,q_]:=1;

LucasNumberU1[n_,p_,q_]/;n>1:=LucasNumberU1[n,p,q]=p LucasNumberU1[n-1,p,q]-q LucasNumberU1[n-2,p,q]

LucasNumberV2 // ClearAll

SetAttributes[LucasNumberV2, {NumericFunction, Listable}]

LucasNumberV2::usage = "LucasNumberV2[n, p, q] calculates the term of the Lucas sequence of the second kind V_n(p, q).";

LucasNumberV2[0, p_, q_] :=
    2;

LucasNumberV2[1, p_, q_] :=
    p;

LucasNumberV2[n_, p_, q_] /; n > 1 := LucasNumberV2[n, p, q] =
    p LucasNumberV2[n - 1, p, q] - q LucasNumberV2[n - 2, p, q]
Multichoose // ClearAll

Multichoose::usage = "Multichoose[n,k] represents n multichoose k.";

Multichoose[n_, k_] :=
    Binomial[n + k - 1, k]
MultisetAssociation // ClearAll

MultisetAssociation::usage = "MultisetAssociation[multiset] returns an association for multiset.";

MultisetAssociation[multiset_]:=Association[MapIndexed[Identity@@#2->#1&,multiset]]
MultisetCardinality // ClearAll;

MultisetCardinality::usage = "MultisetCardinality[m] returns the number of distinct elements in the multiset m.";

MultisetCardinality[m_] :=
    Length[Union[m]];
MultisetPartialDerangements // ClearAll

MultisetPartialDerangements::usage = "MultisetPartialDerangements[multiset] returns the derangements of the multiset with 0 fixed points where every element moves.\nMultisetPartialDerangements[multiset, number] returns the partial derangements of the multiset with the given number of fixed points.\nMultisetPartialDerangements[multiset,number,limit] returns only limit derangements.";

MultisetPartialDerangements[set_,Optional[numberOfFixedPoints_,0],Optional[limit_,All]]:=Take[Select[Count[MapApply[SameQ,Transpose[{#,set}]],True]===numberOfFixedPoints&]@Permutations[set],limit]

MultisetPartialDerangements[args___] :=
    Null /; CheckArguments[MultisetPartialDerangements[args], {1, 3}]


NarayanaNumber//ClearAll

SetAttributes[NarayanaNumber,{Listable,NumericFunction}]

NarayanaNumber::usage="NarayanaNumber[n,k] gives the Narayana number N(n,k).";

NarayanaNumber[n_,k_]:=1/n Binomial[n,k]Binomial[n,k-1]

NextPermutation//ClearAll

NextPermutation::usage="NextPermutation[p] gives the permutation following p in lexicographic order.";

NextPermutation[l_List]:=Module[{sorted=Sort[l]},sorted/;l===Reverse[sorted]]

NextPermutation[l_List]:=Module[{n=Length[l],i,j,nl=l},i=n-1;While[Order[nl[[i]],nl[[i+1]]]==-1,i--];
j=n;While[Order[nl[[j]],nl[[i]]]==1,j--];
{nl[[i]],nl[[j]]}={nl[[j]],nl[[i]]};
Join[Take[nl,i],Reverse[Drop[nl,i]]]]


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

OrderlessCombinations[data_List, list:{{__}}]  :=
    Join @@ Table[OrderlessCombinations[Union[data], {i}], {i,Flatten@list}];

OrderlessCombinationsOfUnmarkedElements // ClearAll

OrderlessCombinationsOfUnmarkedElements::usage = "OrderlessCombinationsOfUnmarkedElements[list,nspec] gives  orderless combinations for list and nspec with the constraint that the elements of list are unmarked by replacing the elements with integers.";

OrderlessCombinationsOfUnmarkedElements[set_, nspec_] :=
  Keys[GroupBy[PeterBurbery`Combinatorics`CanonicalMultiset][PeterBurbery`Combinatorics`OrderlessCombinations[
    set, nspec]]]
ClearAll[AntiSymmetricGraphQ,PartialOrderGraphQ,RemoveSelfLoops]

PartialOrderGraphQ::usage="PartialOrderGraphQ[g] yields True if the binary relation defined by edges of the graph g is a partial order and False otherwise.";
RemoveSelfLoops[g_Graph]:=Graph[DeleteCases[EdgeList[g],_[v_,v_]]]

AntiSymmetricGraphQ[g_Graph]:=Module[{e=List@@@EdgeList[RemoveSelfLoops[g]]},Apply[And,Map[!MemberQ[e,Reverse[#]]&,e]]]/;!UndirectedGraphQ[g]

AntiSymmetricGraphQ[g_Graph]:=EdgeCount[RemoveSelfLoops[g]]==0

PartialOrderGraphQ[g_Graph]:=False/;VertexCount[g]==0

PartialOrderGraphQ[g_Graph]:=ReflexiveGraphQ[g]&&AntiSymmetricGraphQ[g]&&TransitiveGraphQ[g]

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

PartitionFromFrobeniusSymbol//ClearAll

PartitionFromFrobeniusSymbol::usage="PartitionFromFrobeniusSymbol[f] gives the partition whose Frobenius symbol is f.";

PartitionFromFrobeniusSymbol[f_]:=Module[
{a,b,d},
{a,b}=f;
d=Length@a;
Join[
a+Range@d,
ConjugatePartition@DeleteCases[b-Reverse[-1+Range@d],0]
]
]/;MatrixQ@f&&Length@f==2&&IntegerPartitionQ[First@f+1]&&IntegerPartitionQ[Last@f+1]

PartitionRank // ClearAll

PartitionRank::usage = "PartitionRank[x] gives the difference of the largest part of the partition x and the number of parts of x.\n";

PartitionRank[x_] :=
    First @ x - Length @ x /; IntegerPartitionQ @ x
PermutationAscents//ClearAll

PermutationAscents::usage="PermutationAscents[p] gives the indices i where p_i<p_i+1, where the permutation p={p_1, p_2, \[Ellipsis], p_n} is written as a list.";

PermutationAscents[p_] := Select[-1 + Range[Length[p]], p[[#1]] < p[[#1 + 1]] & ] /; PermutationListQ[p]



PermutationCountByInversions//ClearAll

PermutationCountByInversions::usage="PermutationCountByInversions[n, k] gives the number of permutations of length n with exactly k inversions.\nPermutationCountByInversions[n] gives a List for all k starting at zero.";

PermutationCountByInversions[n_Integer?Positive]:=PermutationCountByInversions[n,All]

PermutationCountByInversions[n_Integer?Positive,All]:=Module[{p,z,i},p=Expand[Product[Cancel[(z^i-1)/(z-1)],{i,1,n}]];
CoefficientList[p,z]]

PermutationCountByInversions[n_Integer,k_Integer]:=0/;(k>Binomial[n,2])

PermutationCountByInversions[n_Integer,0]:=1

PermutationCountByInversions[n_Integer,k_Integer?Positive]:=PermutationCountByInversions[n,All][[k+1]]
(*https://resources.wolframcloud.com/FunctionRepository/resources/PermutationCountByInversions*)
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
PermutationGraph//ClearAll

PermutationGraph::usage="PermutationGraph[p] gives the permutation graph for the permutation p.";

Options[PermutationGraph]=Options[Graph];

PermutationGraph[p_?PermutationListQ,opts:OptionsPattern[]]:=Module[{q=InversePermutation[p]//PermutationList},RelationGraph[((#1<#2&&q[[#1]]>q[[#2]])||(#1>#2&&q[[#1]]<q[[#2]]))&,Range[Length[q]],opts]
]
PermutationIndex // ClearAll

PermutationIndex::usage = "PermutationIndex[perm] gives the lexicographic index of permutation perm.";

PermutationIndex[perm_List] :=
    LehmerCodeIndex[LehmerCodeFromPermutation[perm]] + 1;

PermutationIndex[perm_?PermutationCyclesQ] :=
    PermutationIndex[PermutationList[perm]];


PermutationMajorIndex//ClearAll

PermutationMajorIndex::usage="PermutationMajorIndex[p] gives the major index of the permutation p.";

PermutationMajorIndex[p_?PermutationListQ]:=Module[{i},Sum[If[p[[i]]>p[[i+1]],i,0],{i,Length[p]-1}]](*https://resources.wolframcloud.com/FunctionRepository/resources/PermutationMajorIndex/*)

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
Phitorial//ClearAll

SetAttributes[Phitorial,{Listable}]

Phitorial::usage="Phitorial[n] computes the phitorial of the integer n.";

Phitorial[n_?IntegerQ]:=n^EulerPhi[n]*Times@@((Factorial[#]/#^#)^MoebiusMu[n/#]&/@Divisors[n])


PosetQ//ClearAll

PosetQ::usage="PosetQ[poset] determines if the coordinates in poset are partially ordered.";

PosetQ[poset_]:=Module[{sortedlast,sortedfirst,gatherfirst,gatherlast},If[!MatrixQ[poset,IntegerQ],Return[False,Module]];sortedlast=GatherBy[Sort[poset],Last];
sortedfirst=GatherBy[Sort[poset],First];
gatherfirst=GatherBy[Reverse[Flatten[Position[sortedlast,#]&/@poset,1],2],First];gatherlast=GatherBy[Flatten[Position[sortedfirst,#]&/@poset,1],Last];
sortedlast===gatherlast&&sortedfirst===gatherfirst ]


PosetToTableau//ClearAll

PosetToTableau::usage="PosetToTableau[poset] converts the partially ordered set of coordinates poset into a Young tableau.";

PosetToTableau[poset_]/;PosetQ[poset]:=Module[{rp=Reverse[poset,2],ord},
ord=Ordering[rp];
TakeList[ord,Length/@SplitBy[rp[[ord]],First]]]


ClearAll[Primorial];

Primorial::usage="Primorial[n] calculates the product of the primes up to n.";

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


(* ::Section::Closed:: *)
(*Package Footer*)


End[]

EndPackage[];
