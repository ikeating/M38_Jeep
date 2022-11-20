/*
    Isaiah Keating
*/

include </Users/isaiahkeating/Desktop/Cad/Round-Anything/polyround.scad>
// polyRound example
//linear_extrude(3)polygon(polyRound(radiiPoints,30));

// extrudeWithRadius example
//extrudeWithRadius(45,-10,-10,20)polygon(polyRound(radiiPoints,60));

$fn = 30;
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
                    radiiPoints6=[
                        [0,0,0],
                        [0,27.1526,0],
                        [-13.716,27.1526,6.858],
                        [-13.716,40.8686,0],
                        [-53.1368,40.8686,0],
                        [-30.988,0,0],
                    ];
                    rotate([90,0,110])
                        color(olive_drab)
                            translate([25,-25,-81.5])
                                polyRoundExtrude(radiiPoints6,2,0,0,fn=30);
                    radiiPoints7=[
                        [0,0,0],
                        [0,27.1526,0],
                        [-13.716,27.1526,6.858],
                        [-13.716,40.8686,0],
                        [-53.1368,40.8686,0],
                        [-30.988,0,0],
                    ];
                    rotate([90,0,70])
                        color(olive_drab)
                            translate([17,-25,56])
                                polyRoundExtrude(radiiPoints7,2,0,0,fn=30);
                    //rotate([90,0,90])
                        //translate([74,-38,-12.4195])
                            //#cylinder(h = 145.161, r = 45.526198, center = true);//rear wheel well tool
            }
            
        rear_panels();
            
        module hood()
            {
                difference()
                    {
                        radiiPoints5=[
                            [0   , -20, 0],
                            [40.911, -20     , 0],// changed X to render.....
                            [49.911, 0     , 0],
                            [55.7911, 64.5922 , 0],
                            [55.7911, 84.5922 , 0],
                            [-55.7911, 84.5922 , 0],
                            [-55.7911     , 64.5922 , 0],
                            [-49.911     , 0 , 0],
                            [-40.911     , -20 , 0],// changed X to render.....
                        ];
                        rotate([0,0,0])
                            color(olive_drab)
                                translate([0,0,0])
                                    polyRoundExtrude(radiiPoints5,15.621,7.8105,0,fn=30);
                        translate([0,-20,0])
                            color(olive_drab)
                                cube([120,40,40], center = true);
                        translate([0,84.5922,0])
                            color(olive_drab)
                                cube([120,40,40], center = true);
                        rotate([0,0,90])
                            color(olive_drab)
                                translate([27.8892,0,8])
                                    cylinder(h = 20, r = 3.3274, center = true);
                        rotate([0,0,90])
                            color(olive_drab)
                                translate([3.175,0,8])
                                    cylinder(h = 20, r = .635, center = true);
                        radiiPoints16=[
                            [0   , -20, 0],
                            [40.26, -20     , 0],// changed X to render.....
                            [48.26, 0     , 0],
                            [54.1401, 64.5922 , 0],
                            [54.1401, 84.5922 , 0],
                            [-54.1401, 84.5922 , 0],
                            [-54.1401     , 64.5922 , 0],
                            [-48.26     , 0 , 0],
                            [-40.26     , -20 , 0],// changed X to render.....
                        ];
                        rotate([0,0,0])
                            color(olive_drab)
                                translate([0,0,-1.651])
                                    polyRoundExtrude(radiiPoints16,15.621,7.8105,0,fn=30);
                    }   
            }
            
        translate([-12.5,-115,13])  
            hood();
            
        module front_fenders()
            {
                module fender()
                    {
                        difference()
                            {
                                radiiPoints9=[
                                    [0,0,13.4874],
                                    [61.3918,0,0],
                                    [61.3918,36.9748,0],//add 10 to Y
                                    [0,36.9748,0],//add 10 to Y
                                ];
                                rotate([0,0,0])
                                    color(olive_drab)
                                        translate([0,0,0])
                                            polyRoundExtrude(radiiPoints9,5.969,3,0,fn=30);
                                radiiPoints10=[
                                    [0,0,13.4874],
                                    [65,0,0],
                                    [65,36.9748,0],//add 10 to Y
                                    [0,36.9748,0],//add 10 to Y
                                ];
                                rotate([0,0,0])
                                    color(olive_drab)
                                        translate([1.651,1.651,-1.651])
                                            polyRoundExtrude(radiiPoints10,5.969,3,0,fn=30);
                                translate([-1,26.9748,-10])
                                    color(olive_drab)
                                        cube([80, 20, 20]);
                            }
                        rotate([0,60,0])
                            translate([24,0,49.5])
                                difference()
                            {
                                radiiPoints11=[
                                    [0,0,0,],
                                    [61.3918,0,0],
                                    [61.3918,36.9748,0],//add 10 to Y
                                    [0,36.9748,0],//add 10 to Y
                                ];
                                rotate([0,0,0])
                                    color(olive_drab)
                                        translate([0,0,0])
                                            polyRoundExtrude(radiiPoints11,5.969,3,0,fn=30);
                                radiiPoints12=[
                                    [0,0,0],
                                    [65,0,0],
                                    [65,36.9748,0],//add 10 to Y
                                    [0,36.9748,0],//add 10 to Y
                                ];
                            rotate([0,0,0])
                                color(olive_drab)
                                    translate([0,1.651,-1.651])
                                        polyRoundExtrude(radiiPoints12,5.969,3,0,fn=30);
                            translate([-1,26.9748,-10])
                                color(olive_drab)
                                    cube([62.3918, 20, 20]);
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
                                            polyRoundExtrude(radiiPoints13,5.969,3,0,fn=30);
                                radiiPoints14=[
                                    [0,0,0],
                                    [61.3918,0,0],
                                    [61.3918,36.9748,0],//add 10 to Y
                                    [0,36.9748,0],//add 10 to Y
                                ];
                                rotate([0,0,0])
                                    color(olive_drab)
                                        translate([-1.651,1.651,-1.651])
                                            polyRoundExtrude(radiiPoints14,5.969,3,0,fn=30);
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
                                        polyRoundExtrude(radiiPoints15,5.969,3,0,fn=30);
                        translate([70,-2,-75.7682])
                            color(olive_drab)
                                cube([30, 30, 40.8686]);
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
                                translate([-126,-11.1252,-58.5])
                                    polyRoundExtrude(radiiPoints17,141.478,0,0,fn=30);
                        radiiPoints18=[
                            [0,0,0],
                            [96.52,0,0],
                            [96.52,26.67,13.335],
                            [0,26.67,0],
                        ];
                        rotate([90,0,-90])
                            color(olive_drab)
                                translate([-127.9,-13.0252,-59.5])
                                    polyRoundExtrude(radiiPoints18,145,0,0,fn=30);
                    }
            }
            
        rear_deck();
            
    }
    
//body();
    
///////////////////////////////////////////////////////////////////////////////////////