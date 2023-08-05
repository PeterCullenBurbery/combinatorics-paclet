MultisetStrictDescentElements // ClearAll

MultisetStrictDescentElements::usage = "MultisetStrictDescentElements[perm] gives the elements that compose the descents in the multiset perm.";

MultisetStrictDescentElements[perm_] :=
    Extract[Partition[perm, 2, 1], MultisetStrictDescents[perm]]
