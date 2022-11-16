/*
    Isaiah Keating
*/

include </Users/isaiahkeating/Desktop/Cad/Round-Anything/polyround.scad>

/*  Tamiya hex colors
   
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
                
                /*
                
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
                                polyRoundExtrude(radiiPoints,44,-7,-7,fn=20);
                
                radiiPoints2=[
                    [60, 0,  2 ],
                    [60, 70, 2],
                    [40, 30, 40],
                    [0,  15,  5],
                    [0,  0,  .5],
                ];
                    rotate([93,0,90])//angled x in
                        color(hex_color)
                            translate([0,0,-1])
                                polyRoundExtrude(radiiPoints2,3,.8,.8,fn=20);

                radiiPoints3=[
                    [60, 0,  2 ],
                    [60, 70, 2],
                    [40, 30, 40],
                    [0,  15,  5],
                    [0,  0,  .5],
                ];
                    rotate([87,0,90])//angled x in
                        color(hex_color)
                            translate([0,-3,43])
                                polyRoundExtrude(radiiPoints3,3,.8,.8,fn=20);

                radiiPoints4=[
                    [-22.5, -22.5, 0 ],
                    [22.5, -22.5, 0],
                    [20.75, 9.9, 110],
                    [18,  21,  5],
                    [0,  22.5,  100],
                    [-18,  21,  5],
                    [-20.75,  9.9, 110],
                ];
                    rotate([90,0,0])
                        //color(hex_color)
                            translate([22.5,45,-63])
                                polyRoundExtrude(radiiPoints4,4,.8,.8,fn=20);
                 */
                difference()
                    {
                        radiiPoints5=[
                            [60, 0,  2 ],
                            [60, 70, 2],
                            [40, 30, 40],
                            [0,  15,  5],
                            [0,  0,  .5],
                        ];
                            rotate([90,0,90])//angled x in
                                color(hex_color)
                                    translate([0,0,0])
                                        polyRoundExtrude(radiiPoints5,45,7,7,fn=20);
                 
                        radiiPoints6=[
                            [60, 0,  5],
                            [60, 60, 0],
                            [40, 40, 10],
                            [0,  16,  0],
                            [0,  0,  0],
                        ];

                            rotate([90,0,90])
                                color(hex_color)
                                    translate([-5,10,4])
                                        polyRoundExtrude(radiiPoints6,38,7,7,fn=20);
                    }
            }
        drivers_seat();
    }

//body();
////////////////////////////////////////////////////////////