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
