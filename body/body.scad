/*
    Isaiah Keating
*/

include <Round-Anything/polyround.scad>
include <BOSL/constants.scad>
use <BOSL/shapes.scad>
use <BOSL/masks.scad>

// polyRound example
//linear_extrude(3)polygon(polyRound(radiiPoints,30));

// extrudeWithRadius example
//extrudeWithRadius(45,-10,-10,20)polygon(polyRound(radiiPoints,60));

face_number = 10;
$fn = face_number;//number of faces
$fs = 2;//default segment length - filament/2
$fa = 12;//minimum of degree per segment
brown =             "#4e2207";//    X-9
olive_drab =        "#404a13";//    XF-62
orange =            "#ff7f00";//    X-6
metallic_grey =     "#5c6164";//    XF-56
semi_gloss_black =  "#020202";//    X-18 ?

module body()
    {
        module drivers_seat()
            {
                difference()
                    {
                        radiiPoints=[
                            [0     ,-5    ,0    ],
                            [66.04 ,-5    ,0    ],
                            [66.04 ,66.04 ,1    ],
                            [62.484,66.04 ,1    ],
                            [31.75 ,10    ,50   ],
                            [0     ,10.795,5    ],
                        ];
                            rotate([90,0,90])
                                color(brown)
                                    translate([0,0,0])
                                        polyRoundExtrude(radiiPoints,44.704,2,2,fn=face_number);
                        radiiPoints2=[
                            [-10   , 10.795, 0],
                            [43.561, 5     , 0],
                            [62.484, 66.04 , 0],
                            [0     , 66.04 , 0],
                        ];
                            rotate([90,0,90])
                                color(brown)
                                    translate([0,0,3])
                                        polyRoundExtrude(radiiPoints2,38.704,5,5,fn=face_number);
                            rotate([0,0,90])
                                color(brown)
                                    translate([4.445,-22.352,0])
                                        cylinder(h = 20, r = 1.5, center = true);
                        radiiPoints19=[
                            [0      ,0      ,0      ],
                            [96.52  ,0      ,0      ],
                            [96.52  ,26.67  ,13.335 ],
                            [0      ,26.67  ,0      ],
                        ];
                        rotate([90,0,-90])
                            color(olive_drab)
                                translate([-127.9,-13.0252,-59.5])
                                    polyRoundExtrude(radiiPoints19,60,0,0,fn=face_number);
                    }
            }
        translate([0,-0.8,-1.1])
            drivers_seat();
            
        module panels()
            {
                module rear_panels()
                    {
                        difference()
                            {
                                radiiPoints3=[
                                    [0      ,0      ,0  ],
                                    [34.417 ,0      ,0  ],
                                    [120.65 ,6.35   ,0  ],
                                    [127.334,6.35   ,0  ],
                                    [127.334,50.8   ,0  ],
                                    [34.417 ,50.8   ,25 ],
                                    [16.891 ,27.051 ,10 ],
                                    [0      ,27.051 ,0  ],
                                ];
                                rotate([90,0,90])
                                    color(olive_drab)
                                        translate([-5,-25,-85])
                                            polyRoundExtrude(radiiPoints3,2,0,0,fn=face_number);

                                rotate([90,0,90])
                                    color(olive_drab)
                                        translate([74,-38,-12.4195])
                                            cylinder(h = 150, r = 45.526198, center = true);
                            }
                    }
                translate([143.175,0,0])
                    rear_panels();
                rear_panels();
                module front_panels()
                    {
                        radiiPoints6=[
                                [0          ,0      ,0      ],
                                [0          ,27.1526,0      ],
                                [-13.716    ,27.1526,6.858  ],
                                [-13.716    ,39.37  ,0      ],
                                [-53.1368   ,39.37  ,0      ],
                                [-29        ,2      ,0      ],//x -30.988
                                [-11.5      ,2      ,0      ],
                                [-11.5      ,0      ,0      ],
                        ];
                        rotate([90,0,110])
                            color(olive_drab)
                                translate([24.4,-25,-81.6])
                                    polyRoundExtrude(radiiPoints6,2,0,0,fn=face_number);
                        rotate([90,0,70])
                            color(olive_drab)
                                translate([15.9,-25,56.24])
                                    polyRoundExtrude(radiiPoints6,2,0,0,fn=face_number);
                    }
                difference()
                    {
                        front_panels();
                        rotate([90,0,0])
                            color(olive_drab)
                                translate([-85,-25,-5])
                                    cube([145.161,40.8686,10], center = false);
                    }
                module back()
                    {
                        difference()
                            {
                                rotate([0,0,0])
                                    color(olive_drab)
                                        translate([-12.4,122.335,3.56])
                                            cuboid([145.161,10,44.45], fillet=5,
                                            edges=EDGE_BK_LF+EDGE_BK_RT, $fn=face_number);
                                rotate([0,0,0])
                                    color(olive_drab)
                                        translate([-12.4,(122.335+3.99),3.56])
                                            cube([130.175,2.032,50], center = true);
                                rotate([0,0,0])
                                    color(olive_drab)
                                        translate([-12.4,(122.335),24.44])
                                            cube([130.175,20,20], center = true);
                                rotate([0,0,0])
                                    color(olive_drab)
                                        translate([-12.4,(122.335+3.99),-18.675])
                                            prismoid(size1=[125.73,30], size2=[119.38,30], h=31.242);
                            }
                    }
                back();
            }
            
        panels();
            
        module hood()
            {
                module shape_1()
                    {
                        rotate([90,0,0])
                            color(olive_drab)
                                translate([0,7.8105,-32.2961])//up 7.8105
                                    rounded_prismoid(size1=[111.5822,15.621],
                                    size2=[99.822,15.621], h=64.5922, r=7.8105,
                                    center=true, $fn = face_number);
                        rotate([90,0,0])
                            color(olive_drab)
                                translate([0,(-3.90525+7.8105),-32.2961])
                                    rounded_prismoid(size1=[111.5822,7.8105],
                                    size2=[99.822,7.8105], h=64.5922, r=0,
                                    center=true, $fn = face_number);
                    }
                difference()
                    {
                        shape_1();
                        rotate([90,0,0])
                            color(olive_drab)
                                translate([0,(-1.651+7.8105),-32.2961])
                                    rounded_prismoid(size1=[108.2802,15.621],//-3.302
                                    size2=[96.52,15.621], h=64.60, r=7.8105,
                                    center=true, $fn = face_number);
                        rotate([90,0,0])
                            color(olive_drab)
                                translate([0,(-5.55625+7.8105),-32.2961])
                                    rounded_prismoid(size1=[108.2802,7.8105],
                                    size2=[96.52,7.8105], h=64.60, r=0,
                                    center=true, $fn = face_number);
                        rotate([0,0,90])
                            color(olive_drab)
                                translate([27.8892,0,8])
                                    cylinder(h = 20, r = 3.3274, center = true);
                        rotate([0,0,90])
                            color(olive_drab)
                                translate([3.175,0,8])
                                    cylinder(h = 20, r = .635, center = true);
                    }
            }
            
        translate([-12.5,-115,12.9])
            hood();
            
        module front_fenders()
            {
                module fender()
                    {
                        difference()
                            {
                                radiiPoints9=[
                                    [0,0,13.4874],
                                    [71.3918,0,0],//add 10 to x for problem
                                    [71.3918,36.9748,0],//add 10 to Y, add 10 to x for problem
                                    [0,36.9748,0],//add 10 to Y
                                ];
                                rotate([0,0,0])
                                    color(olive_drab)
                                        translate([0,0,0])
                                            polyRoundExtrude(radiiPoints9,5.969,3,0,fn=face_number);
                                radiiPoints10=[
                                    [0,0,13.4874],
                                    [65,0,0],
                                    [65,36.9748,0],//add 10 to Y
                                    [0,36.9748,0],//add 10 to Y
                                ];
                                rotate([0,0,0])
                                    color(olive_drab)
                                        translate([1.651,1.651,-1.651])
                                            polyRoundExtrude(radiiPoints10,5.969,3,0,fn=face_number);
                                translate([-1,26.9748,-10])
                                    color(olive_drab)
                                        cube([80, 20, 20]);
                                rotate([0,120,0])
                                    translate([-40,-10,49.50])
                                        color(olive_drab)
                                            cube([20, 50, 20]);
                            }
                        rotate([0,60,0])
                            translate([24,0,49.5])
                                difference()
                            {
                                radiiPoints11=[
                                    [-10,0,0,],//added -10 to fix problem
                                    [61.3918,0,0],
                                    [61.3918,36.9748,0],//add 10 to Y
                                    [-10,36.9748,0],//add 10 to Y, added -10 to fix problem
                                ];
                                rotate([0,0,0])
                                    color(olive_drab)
                                        translate([0,0,0])
                                            polyRoundExtrude(radiiPoints11,5.969,3,0,fn=face_number);
                                radiiPoints12=[
                                    [0,0,0],
                                    [65,0,0],
                                    [65,36.9748,0],//add 10 to Y
                                    [0,36.9748,0],//add 10 to Y
                                ];
                            rotate([0,0,0])
                                color(olive_drab)
                                    translate([-10,1.651,-1.651])//0,1.651,-1.651
                                        polyRoundExtrude(radiiPoints12,5.969,3,0,fn=face_number);
                            translate([-1,26.9748,-10])
                                color(olive_drab)
                                    cube([62.3918, 20, 20]);
                                rotate([0,-30,0])
                                    translate([-16.04,-10,-10])
                                        color(olive_drab)
                                            cube([20, 50, 20]);
                            }
                        translate([37.15,0,-34.8996])
                            difference()
                            {
                                radiiPoints13=[
                                    [0,0,0],
                                    [61.3918,0,0],
                                    [61.3918,36.9748,0],//add 10 to Y
                                    [0,36.9748,0],//add 10 to Y
                                ];
                                rotate([0,0,0])
                                    color(olive_drab)
                                        translate([0,0,0])
                                            polyRoundExtrude(radiiPoints13,5.969,3,0,fn=face_number);
                                translate([0,26.9748,-10])
                                    color(olive_drab)
                                        cube([80, 20, 20]);
                                translate([-1,-1,-10])
                                    color(olive_drab)
                                        cube([41.1828, 40, 20]);
                            }
                    }
                difference()
                    {
                        fender();
                        radiiPoints15=[
                            [0,0,0],
                            [65,0,0],
                            [65,36.9748,0],//add 10 to Y
                            [0,36.9748,0],//add 10 to Y
                        ];
                        rotate([0,60,0])
                            translate([30,0,49.5])
                                color(olive_drab)
                                    translate([0,1.651,-1.651])
                                        polyRoundExtrude(radiiPoints15,5.969,3,0,fn=face_number);
                        translate([70,-2,-75.7682])
                            color(olive_drab)
                                cube([30, 30, 40.8686]);
                        radiiPoints14=[
                            [0,0,0],
                            [61.3918,0,0],
                            [61.3918,36.9748,0],//add 10 to Y
                            [0,36.9748,0],//add 10 to Y
                        ];
                        rotate([0,0,0])
                            color(olive_drab)
                                translate([35.499,1.651,-36.5506])
                                    polyRoundExtrude(radiiPoints14,5.969,3,0,fn=face_number);
                    }
            }
        rotate([0,0,90])
            translate([-113,-63,7])
                front_fenders();
        mirror([1,0,0])
            rotate([0,0,90])
                translate([-113,-88,7])
                    front_fenders();
        
        module rear_deck()
            {
                difference()
                    {
                        radiiPoints17=[
                            [0,0,0],
                            [96.52,0,0],
                            [96.52,26.67,13.335],
                            [0,26.67,0],
                        ];
                        rotate([90,0,-90])
                            color(olive_drab)
                                translate([-125.2,-12.2252,-58.5])
                                    polyRoundExtrude(radiiPoints17,141.478,0,0,fn=face_number);
                        radiiPoints18=[
                            [0,0,0],
                            [96.52,0,0],
                            [96.52,26.67,13.335],
                            [0,26.67,0],
                        ];
                        rotate([90,0,-90])
                            color(olive_drab)
                                translate([-127.1,-14.1252,-59.5])
                                    polyRoundExtrude(radiiPoints18,145,0,0,fn=face_number);
                    }
            }
            
        rear_deck();
            
        module deck_objects()
            {
                difference()
                    {
                        rotate([0,0,0])
                            color(olive_drab)
                                translate([-4.5,-4.4,-16.1])
                                    cube([62.738, 34.036, 13.3858]);
                        rotate([0,0,0])
                            color(olive_drab)
                                translate([-2.5,-2.4,-17.1])
                                    cube([62.738, 34.036, 13.3858]);
                    }
            }
            
        deck_objects();
            
    }
    
body();

///////////////////////////////////////////////////////////////////////////////////////