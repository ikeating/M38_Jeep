/*
    Isaiah Keating
*/

include <D4_grill/grill.scad>

include <A13_winch_cable/A13_winch_cable.scad>

//include <body/body.scad>

//$fn = 10;

translate([12.4,90,-5])
import ("body/body60.stl");

rotate([90,0,0])
    translate([0,-12,35.033])
        A13_winch_cable();
        
rotate([90,0,0])
    translate([0,0,22])
        grill();

*translate([12.4,90,-5])
    body();
///////////////////////////////////////////////////////////////////////////////