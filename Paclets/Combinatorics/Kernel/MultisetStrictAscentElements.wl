MultisetStrictAscentElements // ClearAll

MultisetStrictAscentElements::usage = "MultisetStrictAscentElements[multiset] returns the pairs elements that at the positions of the ascents of multiset.";

MultisetStrictAscentElements[multiset_] :=
    Extract[Partition[multiset, 2, 1], MultisetStrictAscents[multiset
        ]]
