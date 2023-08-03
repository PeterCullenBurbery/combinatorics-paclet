FindAscentPositions // ClearAll

FindAscentPositions::usage = "FindAscentPositions[multi] finds the positions of ascents in the multiset multi.";

FindAscentPositions[multiset_] :=
    Position[Less @@@ Partition[multiset, 2, 1], True]

FindAscentPositions[multiset_, PerformanceGoal -> "Speed"] :=
    Position[Less @@@ Partition[multiset, 2, 1], True]

FindAscentPositions[multiset_, PerformanceGoal -> "Memory"] :=
    List /@ Select[-1 + Range[Length[multiset]], multiset[[#1]] < multiset
        [[#1 + 1]]&]
