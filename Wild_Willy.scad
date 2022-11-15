/*
    Isaiah Keating
*/

include <D4_grill/D4_PartsTree.scad>

include <A13_winch_cable/A13_winch_cable.scad>

include <body/body.scad>

translate([0,-12,13.033])
    A13_winch_cable();

translate([0,0,0])
    D4_PartsTree();

translate([0,0,0])
    body();
///////////////////////////////////////////////////////////////////////////////