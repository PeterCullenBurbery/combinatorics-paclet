FindDescentElements // ClearAll

FindDescentElements::usage = "FindDescentElements[multi] returns the sets of adjacent elements in the multiset multi where the second element of the set of adjacent elements is less than the first element of the set of adjacent elements.";

FindDescentElements[multiset_] :=
    Extract[Partition[multiset, 2, 1], FindDescentPositions[multiset]]

FindDescentElements[multiset_, PerformanceGoal -> "Speed"] :=
    Extract[Partition[multiset, 2, 1], FindDescentPositions[multiset, 
        PerformanceGoal -> "Speed"]]

FindDescentElements[multiset_, PerformanceGoal -> "Memory"] :=
    Extract[Partition[multiset, 2, 1], FindDescentPositions[multiset, 
        PerformanceGoal -> "Memory"]]
