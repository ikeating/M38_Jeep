/*
    Isaiah Keating
*/

include </Users/isaiahkeating/Desktop/Cad/Round-Anything/polyround.scad>
// polyRound example
//linear_extrude(3)polygon(polyRound(radiiPoints,30));

// extrudeWithRadius example
//extrudeWithRadius(45,-10,-10,20)polygon(polyRound(radiiPoints,60));

$fn = 30;
olive_drab = "#404a13";//       XF-62
orange = "#ff7f00";//           X-6
metallic_grey = "#5c6164";//    XF-56
semi_gloss_black = "#020202";// X-18   ???

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
                                color(olive_drab)
                                    translate([0,0,0])
                                        polyRoundExtrude(radiiPoints,44.704,5,5,fn=30);
                        radiiPoints2=[
                            [-10   , 10.795, 0],
                            [43.561, 5     , 0],
                            [62.484, 66.04 , 0],
                            [0     , 66.04 , 0],
                        ];
                            rotate([90,0,90])
                                color(olive_drab)
                                    translate([0,0,3])
                                        polyRoundExtrude(radiiPoints2,38.704,5,5,fn=30);
                            rotate([0,0,90])
                                color(olive_drab)
                                    translate([4.445,-22.352,0])
                                        cylinder(h = 20, r = 1.5, center = true);
                    }
            }
        drivers_seat();
    }
    
//body();
    
///////////////////////////////////////////////////////////////////////////////////////