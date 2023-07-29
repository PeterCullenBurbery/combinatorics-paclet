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

PeterBurbery`Combinatorics`PartialDerangements;

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


PeterBurbery`Combinatorics`CanonicalMultiset //
   ClearAll

PeterBurbery`Combinatorics`CanonicalMultiset::usage = "CanonicalMultiset[multiset] replaces all elements in multiset with integers.";

PeterBurbery`Combinatorics`CanonicalMultiset[PeterBurbery`Combinatorics`CanonicalMultiset`Private`multiset_] :=
  Module[{PeterBurbery`Combinatorics`CanonicalMultiset`Private`multisetSupport},
    PeterBurbery`Combinatorics`CanonicalMultiset`Private`multisetSupport = Union[PeterBurbery`Combinatorics`CanonicalMultiset`Private`multiset];
    PeterBurbery`Combinatorics`CanonicalMultiset`Private`multiset /. Thread[PeterBurbery`Combinatorics`CanonicalMultiset`Private`multisetSupport -> Range[Length[PeterBurbery`Combinatorics`CanonicalMultiset`Private`multisetSupport
      ]]]
  ]
  
  PeterBurbery`Combinatorics`CentralBinomialCoefficient // ClearAll

SetAttributes[PeterBurbery`Combinatorics`CentralBinomialCoefficient, {NumericFunction, Listable}
    ]

PeterBurbery`Combinatorics`CentralBinomialCoefficient::usage = "CentralBinomialCoefficient[n] calculates the nth central binomial coefficient.";

PeterBurbery`Combinatorics`CentralBinomialCoefficient[PeterBurbery`Combinatorics`CentralBinomialCoefficient`Private`n_] :=
    Binomial[2 PeterBurbery`Combinatorics`CentralBinomialCoefficient`Private`n, PeterBurbery`Combinatorics`CentralBinomialCoefficient`Private`n]
    
 PeterBurbery`Combinatorics`ConjugatePartition // ClearAll

PeterBurbery`Combinatorics`ConjugatePartition::usage="ConjugatePartition[p] gives the partition that transposes the rows and columns of the integer partition p.";

PeterBurbery`Combinatorics`ConjugatePartition[PeterBurbery`Combinatorics`ConjugatePartition`Private`p_]/;PeterBurbery`Combinatorics`IntegerPartitionQ[PeterBurbery`Combinatorics`ConjugatePartition`Private`p]:=Total[UnitStep[Outer[Plus,PeterBurbery`Combinatorics`ConjugatePartition`Private`p,-Range[First[PeterBurbery`Combinatorics`ConjugatePartition`Private`p]]]]]

      
PeterBurbery`Combinatorics`DescendingSublists//ClearAll

PeterBurbery`Combinatorics`DescendingSublists::usage="DescendingSublists[list] makes sublists of list starting at its left-to-right maxima.";

PeterBurbery`Combinatorics`DescendingSublists[PeterBurbery`Combinatorics`DescendingSublists`Private`list_]:=TakeList[PeterBurbery`Combinatorics`DescendingSublists`Private`list,Length/@Split[Max/@Table[Take[PeterBurbery`Combinatorics`DescendingSublists`Private`list,PeterBurbery`Combinatorics`DescendingSublists`Private`n],{PeterBurbery`Combinatorics`DescendingSublists`Private`n,Length@PeterBurbery`Combinatorics`DescendingSublists`Private`list}]]]
    
 PeterBurbery`Combinatorics`DivisorHasseDiagram//ClearAll

PeterBurbery`Combinatorics`DivisorHasseDiagram::usage="DivisorHasseDiagram[n] gives a Hasse diagram based on the divisors of n, represented as a Graph.";

Options[PeterBurbery`Combinatorics`DivisorHasseDiagram]=Options[Graph];

PeterBurbery`Combinatorics`DivisorHasseDiagram[PeterBurbery`Combinatorics`DivisorHasseDiagram`Private`n_Integer?Positive,PeterBurbery`Combinatorics`DivisorHasseDiagram`Private`opt:OptionsPattern[]]:=Module[{PeterBurbery`Combinatorics`DivisorHasseDiagram`Private`divisors=Divisors[PeterBurbery`Combinatorics`DivisorHasseDiagram`Private`n],PeterBurbery`Combinatorics`DivisorHasseDiagram`Private`links},
PeterBurbery`Combinatorics`DivisorHasseDiagram`Private`links=Reap[Do[If[PeterBurbery`Combinatorics`DivisorHasseDiagram`Private`a>PeterBurbery`Combinatorics`DivisorHasseDiagram`Private`b&&Divisible[PeterBurbery`Combinatorics`DivisorHasseDiagram`Private`a,PeterBurbery`Combinatorics`DivisorHasseDiagram`Private`b],Sow[PeterBurbery`Combinatorics`DivisorHasseDiagram`Private`a\[DirectedEdge]PeterBurbery`Combinatorics`DivisorHasseDiagram`Private`b]],{PeterBurbery`Combinatorics`DivisorHasseDiagram`Private`a,PeterBurbery`Combinatorics`DivisorHasseDiagram`Private`divisors},{PeterBurbery`Combinatorics`DivisorHasseDiagram`Private`b,PeterBurbery`Combinatorics`DivisorHasseDiagram`Private`divisors}];Nothing]//Flatten;
TransitiveReductionGraph[PeterBurbery`Combinatorics`DivisorHasseDiagram`Private`links,Evaluate@FilterRules[{PeterBurbery`Combinatorics`DivisorHasseDiagram`Private`opt},Options[Graph]]]
]   
    
PeterBurbery`Combinatorics`DominatingIntegerPartitionQ//ClearAll

PeterBurbery`Combinatorics`DominatingIntegerPartitionQ::usage="DominatingIntegerPartitionQ[p, q] yields True if integer partition p dominates integer partition q and False otherwise.";

PeterBurbery`Combinatorics`DominatingIntegerPartitionQ[PeterBurbery`Combinatorics`DominatingIntegerPartitionQ`Private`a_,PeterBurbery`Combinatorics`DominatingIntegerPartitionQ`Private`b_]/;PeterBurbery`Combinatorics`IntegerPartitionQ[PeterBurbery`Combinatorics`DominatingIntegerPartitionQ`Private`a]&&PeterBurbery`Combinatorics`IntegerPartitionQ[PeterBurbery`Combinatorics`DominatingIntegerPartitionQ`Private`b]&&Total[PeterBurbery`Combinatorics`DominatingIntegerPartitionQ`Private`a]==Total[PeterBurbery`Combinatorics`DominatingIntegerPartitionQ`Private`b]:=(Length[PeterBurbery`Combinatorics`DominatingIntegerPartitionQ`Private`a]<=Length[PeterBurbery`Combinatorics`DominatingIntegerPartitionQ`Private`b])&&With[{PeterBurbery`Combinatorics`DominatingIntegerPartitionQ`Private`aa=Accumulate[PeterBurbery`Combinatorics`DominatingIntegerPartitionQ`Private`a],PeterBurbery`Combinatorics`DominatingIntegerPartitionQ`Private`bb=Accumulate[Take[PeterBurbery`Combinatorics`DominatingIntegerPartitionQ`Private`b,Length[PeterBurbery`Combinatorics`DominatingIntegerPartitionQ`Private`a]]]},VectorQ[PeterBurbery`Combinatorics`DominatingIntegerPartitionQ`Private`aa-PeterBurbery`Combinatorics`DominatingIntegerPartitionQ`Private`bb,NonNegative]]

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

PeterBurbery`Combinatorics`IntegerPartitionQ // ClearAll;

PeterBurbery`Combinatorics`IntegerPartitionQ::usage="IntegerPartitionQ[x] checks whether x is a weakly decreasing list of positive integers.\nIntegerPartitionQ[x,n] checks whether x is an integer partition of n.";

PeterBurbery`Combinatorics`IntegerPartitionQ[x_] := 
 VectorQ[x, Internal`PositiveIntegerQ] && 
  VectorQ[Differences[x], Internal`NonPositiveIntegerQ];
PeterBurbery`Combinatorics`IntegerPartitionQ[x_, n_] := 
 IntegerQ[n] && IntegerPartitionQ[x] && Total[x] == n




(* ::Section::Closed:: *)
(*Package Footer*)


EndPackage[];
