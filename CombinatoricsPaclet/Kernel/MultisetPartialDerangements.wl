(* ::Package:: *)

BeginPackage["PeterBurbery`CombinatoricsPaclet`"]

PeterBurbery`CombinatoricsPaclet`MultisetPartialDerangements

Begin["`Private`"]

MultisetPartialDerangements // ClearAll
MultisetPartialDerangements[set_, number_, 
  Optional[limit_, 
   All]] :=(*Module[{length,assoc,derangements,list1},length=Length[\
set];assoc=AssociationThread[Array[Identity[#]&,length]->set];\
derangements=PartialDerangements[set,number];list1=Table[Lookup[assoc,\
derangment],{derangment,derangements}];Take[Select[Count[MapThread[\
Equal,{set,#}],True]==number&][Permutations[set]],limit]]*)
 Take[Select[Count[MapThread[Equal, {set, #}], True] == number &][
   Permutations[set]], limit]
End[]

EndPackage[]
