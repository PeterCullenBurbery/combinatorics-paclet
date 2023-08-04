PartitionSuperscriptNotation // ClearAll

PartitionSuperscriptNotation::usage = "PartitionSuperscriptNotation[partition] represents partition with superscript notation.";

PartitionSuperscriptNotation[partition_] :=
    Row[KeyValueMap[Superscript][Counts[partition]]]
