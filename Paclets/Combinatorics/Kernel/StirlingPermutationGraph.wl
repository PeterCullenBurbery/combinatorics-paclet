StirlingPermutationGraph // ClearAll

StirlingPermutationGraph::usage = "StirlingPermutationGraph[perm] displays the plane tree corresponding to the Stirling permutation perm.";

StirlingPermutationGraph[sp_, opts : OptionsPattern[Graph]] :=
    Module[{vl = DeleteDuplicates @ sp, pos = PositionIndex @ sp, eL 
        = EdgeList @* TransitiveReductionGraph @* GraphUnion},
        Graph[Prepend[vl, 0], eL[Graph @ Thread[0 -> vl], SimpleGraph
             @ RelationGraph[And @@ Between[pos @ #] /@ pos[#2]&, vl]], GraphLayout
             -> {"LayeredEmbedding", "RootVertex" -> 0}, EdgeLabels -> {e_ :> Placed[
            Last @ e, {Left, "Middle"}]}, opts]
    ]
