/*
    Isaiah Keating
*/

include <D4_grill/grill.scad>

include <A13_winch_cable/A13_winch_cable.scad>

include <body/body.scad>

rotate([90,0,0])
    translate([0,-12,20.033])
        A13_winch_cable();
        
rotate([90,0,0])
    translate([0,0,7])
        grill();

translate([10,90,-5])
    body();
///////////////////////////////////////////////////////////////////////////////