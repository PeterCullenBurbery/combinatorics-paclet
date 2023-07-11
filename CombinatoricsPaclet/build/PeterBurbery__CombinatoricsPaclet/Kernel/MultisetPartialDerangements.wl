(* ::Package:: *)

BeginPackage["PeterBurbery`CombinatoricsPaclet`"]

PeterBurbery`CombinatoricsPaclet`MultisetPartialDerangements

Begin["`Private`"]

MultisetPartialDerangements // ClearAll

MultisetPartialDerangements::usage = "MultisetPartialDerangements[multiset,number] returns a list of permutations of multiset where number elements are in their original place, often referred to as fixed points in the study of derangements.\nMultisetPartialDerangements[multiset,number,limit] returns a list of all the partial derangements of the multiset with the specified number of fixed points and with the specified limit on the number of partial derangements returned.";

MultisetPartialDerangements[set_, number_, Optional[limit_, All]] :=                                                                                                                                                                                                           (*Module[{length,assoc,derangements,list1},length=Length[\
set];assoc=AssociationThread[Array[Identity[#]&,length]->set];\
derangements=PartialDerangements[set,number];list1=Table[Lookup[assoc,\
derangment],{derangment,derangements}];Take[Select[Count[MapThread[\
Equal,{set,#}],True]==number&][Permutations[set]],limit]]*)Take[Select[
    Count[MapThread[Equal, {set, #}], True] == number&][Permutations[set]
    ], limit]

End[]

EndPackage[]
