/*
    Isaiah Keating
*/

include </Users/isaiahkeating/Desktop/Cad/Round-Anything/polyround.scad>
// polyRound example
//linear_extrude(3)polygon(polyRound(radiiPoints,30));

// extrudeWithRadius example
//extrudeWithRadius(45,-10,-10,20)polygon(polyRound(radiiPoints,60));

$fn = 30;
brown =             "#4e2207";//            X-9
olive_drab =        "#404a13";//       XF-62
orange =            "#ff7f00";//           X-6
metallic_grey =     "#5c6164";//    XF-56
semi_gloss_black =  "#020202";// X-18   ???

module body()
    {
        module drivers_seat()
            {
                difference()
                    {
                        radiiPoints=[
                            [0     , -5    , 0 ],
                            [66.04 , -5    ,0  ],
                            [66.04 , 66.04 ,1  ],
                            [62.484, 66.04 , 1 ],
                            [31.75 , 10    , 50],
                            [0     , 10.795, 5 ],
                        ];
                            rotate([90,0,90])
                                color(brown)
                                    translate([0,0,0])
                                        polyRoundExtrude(radiiPoints,44.704,5,5,fn=30);
                        radiiPoints2=[
                            [-10   , 10.795, 0],
                            [43.561, 5     , 0],
                            [62.484, 66.04 , 0],
                            [0     , 66.04 , 0],
                        ];
                            rotate([90,0,90])
                                color(brown)
                                    translate([0,0,3])
                                        polyRoundExtrude(radiiPoints2,38.704,5,5,fn=30);
                            rotate([0,0,90])
                                color(brown)
                                    translate([4.445,-22.352,0])
                                        cylinder(h = 20, r = 1.5, center = true);
                    }
            }
            
        drivers_seat();
            
        module rear_panels()
            {
                difference()
                    {
                        radiiPoints3=[
                            [0,0,0],
                            [34.417,0,0],
                            [78.4225,100,50],
                            [120.65,6.35,0],
                            [132.334,6.35,0],
                            [132.334,50.8,0],
                            [34.417,50.8,25],
                            [16.891,27.051,10],
                            [0,27.051,0],
                        ];
                        rotate([90,0,90])
                            color(olive_drab)
                                translate([-5,-25,-85])
                                    polyRoundExtrude(radiiPoints3,145.161,0,0,fn=30);
                        radiiPoints4=[
                            [-1,-1,0],
                            [130.334,-1,0],
                            [130.334,60,0],
                            [-1,60,0],
                        ];
                        rotate([90,0,90])
                            color(olive_drab)
                                translate([-5,-25,-83])
                                    polyRoundExtrude(radiiPoints4,141.161,0,0,fn=30);
                    }
            }
        rear_panels();
    }
    
//body();
    
///////////////////////////////////////////////////////////////////////////////////////