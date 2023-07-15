(* ::Package:: *)

BeginPackage["PeterBurbery`CombinatoricsPaclet`"]

PeterBurbery`CombinatoricsPaclet`ConjugatePartition

Begin["`Private`"]

ConjugatePartition // ClearAll

ConjugatePartition::usage="ConjugatePartition[p] gives the partition that transposes the rows and columns of the integer partition p.";

ConjugatePartition[p_]/;IntegerPartitionQ[p]:=Total[UnitStep[Outer[Plus,p,-Range[First[p]]]]]

End[]

EndPackage[]




