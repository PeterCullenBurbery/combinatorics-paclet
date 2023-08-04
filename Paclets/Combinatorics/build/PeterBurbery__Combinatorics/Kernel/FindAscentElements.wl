FindAscentElements // ClearAll

FindAscentElements::usage = "FindAscentElements[multi] returns the sets of adjacent elements in the multiset multi where the second element of the set of adjacent elements is greater than the first element of the set of adjacent elements.";

FindAscentElements[multiset_] :=
    Extract[Partition[multiset, 2, 1], FindAscentPositions[multiset]]

FindAscentElements[multiset_, PerformanceGoal -> "Speed"] :=
    Extract[Partition[multiset, 2, 1], FindAscentPositions[multiset, 
        PerformanceGoal -> "Speed"]]

FindAscentElements[multiset_, PerformanceGoal -> "Memory"] :=
    Extract[Partition[multiset, 2, 1], FindAscentPositions[multiset, 
        PerformanceGoal -> "Memory"]]
