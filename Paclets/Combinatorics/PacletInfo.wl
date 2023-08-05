(* ::Package:: *)

PacletObject[
  <|
    "Name" -> "PeterBurbery/Combinatorics",
    "Description" -> "Combinatorics functions for subsets, tuples, and permutations",
    "Creator" -> "Peter Cullen Burbery",
    "License" -> "BSD-3-Clause",
    "PublisherID" -> "PeterBurbery",
    "Version" -> "2.1.0",
    "WolframVersion" -> "13.3+",
    "PrimaryContext" -> "PeterBurbery`Combinatorics`",
    "Extensions" -> {
      {
        "Kernel",
        "Root" -> "Kernel",
        "Context" -> {
          {
            "PeterBurbery`Combinatorics`",
            "Combinatorics.wl"
          }
        },
        "Symbols" -> {
          "PeterBurbery`Combinatorics`CanonicalMultiset",
          "PeterBurbery`Combinatorics`CentralBinomialCoefficient",
          "PeterBurbery`Combinatorics`ConjugatePartition",
          "PeterBurbery`Combinatorics`DescendingSublists",
          "PeterBurbery`Combinatorics`DivisorHasseDiagram",
          "PeterBurbery`Combinatorics`DominatingIntegerPartitionQ",
          "PeterBurbery`Combinatorics`DurfeeSquare",
          "PeterBurbery`Combinatorics`EnumerateMultisetPartialDerangements",
          "PeterBurbery`Combinatorics`EulerianCatalanNumber",
          "PeterBurbery`Combinatorics`EulerianNumber",
          "PeterBurbery`Combinatorics`EulerianNumberOfTheSecondKind",
          "PeterBurbery`Combinatorics`FerrersDiagram",
          "PeterBurbery`Combinatorics`Fibbinary",
          "PeterBurbery`Combinatorics`FibonacciEncode",
          "PeterBurbery`Combinatorics`FindAscentElements",
          "PeterBurbery`Combinatorics`FindAscentPositions",
          "PeterBurbery`Combinatorics`FrobeniusSymbolFromPartition",
          "PeterBurbery`Combinatorics`FromInversionVector",
          "PeterBurbery`Combinatorics`FromPartitionPlusNotation",
          "PeterBurbery`Combinatorics`FromPartitionSuperscriptNotation",
          "PeterBurbery`Combinatorics`GaussFactorial",
          "PeterBurbery`Combinatorics`GrayCode",
          "PeterBurbery`Combinatorics`HasseDiagram",
          "PeterBurbery`Combinatorics`HookLengths",
          "PeterBurbery`Combinatorics`HuffmanCodeWords",
          "PeterBurbery`Combinatorics`HuffmanDecode",
          "PeterBurbery`Combinatorics`HuffmanEncode",
          "PeterBurbery`Combinatorics`IntegerPartitionQ",
          "PeterBurbery`Combinatorics`InverseFibonacci",
          "PeterBurbery`Combinatorics`InverseGrayCode",
          "PeterBurbery`Combinatorics`InversionCount",
          "PeterBurbery`Combinatorics`InversionVectorQ",
          "PeterBurbery`Combinatorics`LehmerCodeFromPermutation",
          "PeterBurbery`Combinatorics`LucasNumberU1",
          "PeterBurbery`Combinatorics`LucasNumberV2",
          "PeterBurbery`Combinatorics`ModifiedCentralBinomialCoefficient",
          "PeterBurbery`Combinatorics`Multichoose",
          "PeterBurbery`Combinatorics`MultisetAssociation",
          "PeterBurbery`Combinatorics`MultisetPartialDerangements",
          "PeterBurbery`Combinatorics`MultisetStrictDescentElements",
          "PeterBurbery`Combinatorics`MultisetStrictDescents",
          "PeterBurbery`Combinatorics`NarayanaNumber",
          "PeterBurbery`Combinatorics`NDigitNumbers",
          "PeterBurbery`Combinatorics`NextPermutation",
          "PeterBurbery`Combinatorics`NumberOfTableaux",
          "PeterBurbery`Combinatorics`OrderedTupleFromIndex",
          "PeterBurbery`Combinatorics`OrderedTupleIndex",
          "PeterBurbery`Combinatorics`OrderlessCombinations",
          "PeterBurbery`Combinatorics`OrderlessCombinationsOfUnmarkedElements",
          "PeterBurbery`Combinatorics`PartialDerangements",
          "PeterBurbery`Combinatorics`PartialOrderGraphQ",
          "PeterBurbery`Combinatorics`PartitionCrank",
          "PeterBurbery`Combinatorics`PartitionFromFrobeniusSymbol",
          "PeterBurbery`Combinatorics`PartitionPlusNotation",
          "PeterBurbery`Combinatorics`PartitionRank",
          "PeterBurbery`Combinatorics`PartitionSuperscriptNotation",
          "PeterBurbery`Combinatorics`PermutationCountByInversions",
          "PeterBurbery`Combinatorics`PermutationDescents",
          "PeterBurbery`Combinatorics`PermutationFromIndex",
          "PeterBurbery`Combinatorics`PermutationGraph",
          "PeterBurbery`Combinatorics`PermutationIndex",
          "PeterBurbery`Combinatorics`PermutationMajorIndex",
          "PeterBurbery`Combinatorics`PermutationToTableaux",
          "PeterBurbery`Combinatorics`Phitorial",
          "PeterBurbery`Combinatorics`PosetQ",
          "PeterBurbery`Combinatorics`PosetToTableau",
          "PeterBurbery`Combinatorics`Primorial",
          "PeterBurbery`Combinatorics`QExponential",
          "PeterBurbery`Combinatorics`QMultinomial",
          "PeterBurbery`Combinatorics`RandomYoungTableau",
          "PeterBurbery`Combinatorics`RationalNumberRepeatingDecimalPeriod",
          "PeterBurbery`Combinatorics`ReflexiveGraphQ",
          "PeterBurbery`Combinatorics`SecantNumber",
          "PeterBurbery`Combinatorics`SelectPermutations",
          "PeterBurbery`Combinatorics`SelectSubsets",
          "PeterBurbery`Combinatorics`SelectTuples",
          "PeterBurbery`Combinatorics`SelfConjugatePartitionQ",
          "PeterBurbery`Combinatorics`SignedLahNumber",
          "PeterBurbery`Combinatorics`StandardYoungTableaux",
          "PeterBurbery`Combinatorics`StrictIntegerPartitions",
          "PeterBurbery`Combinatorics`SubsetFromIndex",
          "PeterBurbery`Combinatorics`SubsetIndex",
          "PeterBurbery`Combinatorics`TableauQ",
          "PeterBurbery`Combinatorics`TableauToPoset",
          "PeterBurbery`Combinatorics`TableauxToPermutation",
          "PeterBurbery`Combinatorics`TangentNumber",
          "PeterBurbery`Combinatorics`ToInversionVector",
          "PeterBurbery`Combinatorics`TransitiveGraphQ",
          "PeterBurbery`Combinatorics`TransposeTableau",
          "PeterBurbery`Combinatorics`TupleFromIndex",
          "PeterBurbery`Combinatorics`TupleIndex",
          "PeterBurbery`Combinatorics`UnsignedLahNumber",
          "PeterBurbery`Combinatorics`YoungDiagram",
          "PeterBurbery`Combinatorics`ZeckendorfRepresentation"
        }
      },
      {"Documentation", "Language" -> "English"}
    },
    "Loading" -> "Startup"
  |>
]
