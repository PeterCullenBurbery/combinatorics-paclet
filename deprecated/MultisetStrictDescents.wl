MultisetStrictDescents // ClearAll

MultisetStrictDescents::usage = "MultisetStrictDescents[perm] gives the strict descents of the permutation perm.";

MultisetStrictDescents[perm_] :=
    Position[(#1 > #2&) @@@ Partition[perm, 2, 1], True]
