FromPartitionPlusNotation // ClearAll

FromPartitionPlusNotation::usage = "FromPartitionPlusNotation[\[Lambda]] returns a list of weakly decreasing integers representing the integer partition \[Lambda] written in partition plus notation.";

FromPartitionPlusNotation[\[Lambda]_Integer?IntegerQ] :=
    {\[Lambda]}

FromPartitionPlusNotation[\[Lambda]_] :=
    List @@ \[Lambda]
