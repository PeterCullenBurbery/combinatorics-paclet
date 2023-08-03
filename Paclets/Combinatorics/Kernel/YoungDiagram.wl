YoungDiagram // ClearAll

YoungDiagram::usage = "YoungDiagram[\[Lambda]] gives a Young diagram for the partition \[Lambda] with empty boxes.";

YoungDiagram[list_] :=
    Grid[
        ConstantArray["", #]& /@ list
        ,
        Frame ->
            Join[
                {None}
                ,
                {None}
                ,
                {
                    Flatten[
                        With[{cc = Range @ #& /@ list},
                            Table[Flatten[{nn, #} -> True& /@ cc[[nn]],
                                 1], {nn, Length @ cc}]
                        ]
                        ,
                        1
                    ]
                }
            ]
        ,
        ItemSize -> {1.5, 1.5}
    ]
