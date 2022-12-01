/*
    Isaiah Keating
*/
$fn= 30;
$fa=1;
$fs=0.4;
include <winch_cable.scad>
use <MCAD/boxes.scad>
/*
    winch_cable(Radius=(radius of spring), Wire_radius=(radius of wire),
                Pitch=(Pitch of spring - distance between coils),
                Coils =(number of coils), Step=(Spring Resolution - in degrees),
                $fn=(Wire resolution));

    Tamiya hex colors
    
    #404a13     Olive Drab  XF-62
    #ff7f00     Orange      X-6
    #5c6164     Metallic Grey   XF-56
    #020202     Semi-Gloss Black X-18   ???
*/

module A13_winch_cable()
    {
        module cable_drum()
            {
                hex_color = "#020202";
                rotate([0,90,0])
                    color(hex_color)
                        translate([0,0,0])
                            cylinder(h=21.066, r=6.0325, center = true);//added 1 to h for join
                color(hex_color)
                minkowski()
                    {
                        rotate([0,90,0])
                            translate([0,0,9.4615])
                                cylinder(h=0.0001, r=8.3185, center = true);
                                //cylinder(h=1.143, r=8.89, center = true);//starting dim
                                    sphere(r = 0.5715);
                    }
                color(hex_color)
                minkowski()
                    {
                        rotate([0,90,0])
                            translate([0,0,-9.4615])
                                cylinder(h=0.0001, r=8.3185, center = true);
                                //cylinder(h=1.143, r=8.89, center = true);//starting dim
                                    sphere(r = 0.5715);
                    }
                rotate([0,90,0])
                    color(hex_color)
                        translate([0,0,-5.0165])
                            cylinder(h=10.033, r=7.1325, center = true);
                rotate([0,90,0])
                    color(hex_color)
                        translate([0,0,-14.986])
                            cylinder(h=9.906, r=8.89, center = true);
                color(hex_color)
                    translate([14.449,-0.9065,-0.635])
                        roundedBox(size=[8.832,14.837,18.796],radius=.75,sidesonly=false);
            }
            
        module cable()
            {
                hex_color = "#5c6164";
                rotate([0,90,0])
                    color(hex_color)
                        translate([0,0,9.4])
                            winch_cable(Radius= 6.0325, Wire_radius=.55,
                                        Pitch= -1.1, Coils = 10, Step=4, $fn= 30);
                rotate([0,90,0])
                    color(hex_color)
                        translate([0,0,-9.4])
                            winch_cable(Radius= 7.1325, Wire_radius=.55,
                                        Pitch= 1.1, Coils = 8.5, Step=4, $fn= 30);
            }
            
            cable_drum();
            rotate([180,0,0])
                cable();
    }
    
//A13_winch_cable();

/////////////////////////////////////////////////////////
