FromPartitionSuperscriptNotation // ClearAll

FromPartitionSuperscriptNotation::usage = "FromPartitionSuperscriptNotation[\[Lambda]] goes from \[Lambda] represented with partition superscript notation to \[Lambda] represented as a weakly decreasing list of strictly positive integers.";

FromPartitionSuperscriptNotation[\[Lambda]_] :=
    Catenate[ConstantArray @@@ Identity @@ \[Lambda]]
