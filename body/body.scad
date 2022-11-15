/*
    Isaiah Keating
*/

include </Users/isaiahkeating/Desktop/Cad/Round-Anything/polyround.scad>
/*

    Tamiya hex colors
    
    #404a13     Olive Drab  XF-62
    #ff7f00     Orange      X-6
    #5c6164     Metallic Grey   XF-56
    #020202     Semi-Gloss Black X-18   ???

// polyRound example
radiiPoints=[
    [-4, 0,  1   ],
    [5,  3,  1.5 ],
    [0,  7,  0.1 ],
    [8,  7,  10  ],
    [20, 20, 0.8 ],
    [10, 0,  10  ]
];
linear_extrude(3)polygon(polyRound(radiiPoints,30));

// extrudeWithRadius example
radiiPoints=[
                    [60, 0,  2 ],
                    [60, 60, .5],
                    [40,  10,  40 ],
                    [0,  16,  5],
                    [0,  0,  .5],
];
extrudeWithRadius(45,-10,-10,20)polygon(polyRound(radiiPoints,60));
*/
module body()
    {
        module drivers_seat()
            {
                hex_color = "#404a13";
                
                radiiPoints=[
                    [60, 0,  2 ],
                    [60, 60, .5],
                    [40, 10, 10],
                    [0,  16,  5],
                    [0,  0,  .5],
                ];

                    rotate([90,0,90])
                        color(hex_color)
                            translate([0,0,0])
                                polyRoundExtrude(radiiPoints,44,-5,-5,fn=20);
                
                radiiPoints2=[
                    [60, 0,  2 ],
                    [60, 70, 2],
                    [40, 30, 40],
                    [0,  15,  5],
                    [0,  0,  .5],
                ];
                    rotate([90,0,90])
                        color(hex_color)
                            translate([0,0,-3])
                                polyRoundExtrude(radiiPoints2,3,.8,.8,fn=20);

                radiiPoints3=[
                    [60, 0,  2 ],
                    [60, 70, 2],
                    [40, 30, 40],
                    [0,  15,  5],
                    [0,  0,  .5],
                ];
                    rotate([90,0,90])
                        color(hex_color)
                            translate([0,0,44])
                                polyRoundExtrude(radiiPoints3,3,.8,.8,fn=20);
            }
        drivers_seat();
    }

//body();
////////////////////////////////////////////////////////////