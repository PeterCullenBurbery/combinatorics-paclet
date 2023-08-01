MultisetStrictAscents // ClearAll

MultisetStrictAscents::usage = "MultisetStrictAscents[perm] finds the ascents of the permutation of a multiset perm";

MultisetStrictAscents[multiset_] :=
    Position[Less[#1, #2]& @@@ Partition[multiset, 2, 1], True]
