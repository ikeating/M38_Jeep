/*
    Isaiah Keating
*/
include <winch_cable.scad>

module A13_winch_cable()
    {
        translate([20,0,0])
            winch_cable(Radius= 4, Wire_radius=.5, Pitch= 4, Coils = 10, Step=5, $fn= 20);
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
        
        winch_cable(Radius= 5, Wire_radius=.5, Pitch= 2, Coils = 10, Step=5, $fn= 20);
    }

A13_winch_cable();