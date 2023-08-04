FindDescentPositions // ClearAll

FindDescentPositions::usage = "FindDescentPositions[multi] finds the positions of descents in the multiset multi.";

FindDescentPositions[multiset_] :=
    Position[Greater @@@ Partition[multiset, 2, 1], True]

FindDescentPositions[multiset_, PerformanceGoal -> "Speed"] :=
    Position[Greater @@@ Partition[multiset, 2, 1], True]

FindDescentPositions[multiset_, PerformanceGoal -> "Memory"] :=
    List /@ Select[-1 + Range[Length[multiset]], multiset[[#1]] > multiset
        [[#1 + 1]]&]
