/*
    Isaiah Keating
*/
$fn= 80;
include <winch_cable.scad>
/*
    Tamiya hex colors
    
    #404a13     Olive Drab  XF-62
    #ff7f00     Orange      X-6
    #5c6164     Metallic Grey   XF-56
    #020202     Semi-Gloss Black X-18   ???
*/

module A13_winch_cable()
    {
        hex_color = "#5c6164";
        rotate([0,90,0])
        color(hex_color)
            translate([0,0,0])
                winch_cable(Radius= 5, Wire_radius=.6,
                            Pitch= 1, Coils = 10, Step=5, $fn= 20);
            /*/ radius of spring
            Radius= 10;
            // radius of wire 
            Wire_radius=2;
            // Pitch of spring - distance between coils
            Pitch= 4;
            //number of coils
            Coils = 10;
            // Spring Resolution - in degrees
            Step=5;
            // Wire resolution
            $fn= 20;*/
        rotate([0,90,0])
            color(hex_color)
                translate([0,0,9])
                    winch_cable(Radius= 4, Wire_radius=.5,
                                Pitch= 1, Coils = 10, Step=5, $fn= 20);
    }

A13_winch_cable();