PartitionPlusNotation // ClearAll

(*SetAttributes[PartitionPlusNotation,{Listable}]*)

PartitionPlusNotation::usage = "PartitionPlusNotation[partition] displays partition in plus notation.";

PartitionPlusNotation[{p_Integer?IntegerQ}] :=
    p

PartitionPlusNotation[partition_List ? (VectorQ[#, MatchQ[#, _Integer
    ?IntegerQ]&]&)] :=
    Inactive[Plus] @@ partition
