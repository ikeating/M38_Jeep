/*
    Isaiah Keating
*/
$fn= 80;
include <winch_cable.scad>
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
                hex_color = "#5c6164";
                rotate([0,90,0])
                    color(hex_color)
                        translate([0,0,0])
                            cylinder(h=20.066, r=6.0325, center = true);
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
            }
            
        module cable()
            {
                hex_color = "#5c6164";
                rotate([0,90,0])
                    color(hex_color)
                        translate([0,0,9])
                            winch_cable(Radius= 6.0325, Wire_radius=.55,
                                        Pitch= -1.1, Coils = 16, Step=2, $fn= 20);
                rotate([0,90,0])
                    color(hex_color)
                        translate([0,0,-9])
                            winch_cable(Radius= 7.1325, Wire_radius=.55,
                                        Pitch= 1.1, Coils = 8, Step=2, $fn= 20);
            }
            
            cable_drum();
            cable();
    }
    
A13_winch_cable();









/////////////////////////////////////////////////////////
