/*
    Isaiah Keating
*/

brown =             "#4e2207";//    X-9
olive_drab =        "#404a13";//    XF-62
orange =            "#ff7f00";//    X-6
metallic_grey =     "#5c6164";//    XF-56
semi_gloss_black =  "#020202";//    X-18 ?

include <D4_grill/grill.scad>

include <A13_winch_cable/A13_winch_cable.scad>

//include <body/body.scad>

//$fn = 60;

//color(olive_drab)
    translate([12.4,90,-5])
        import ("body/body60.stl");

//color(metallic_grey)
    rotate([0,0,0])
        resize([0,0,0], auto=[true,true,true])
            translate([0,-50,-25])
                import ("hook/hook_resized_autoCad.stl");

rotate([90,0,0])
    translate([0,-12,35.033])
        A13_winch_cable();
        
rotate([90,0,0])
    translate([0,0,22])
        grill();

*translate([12.4,90,-5])
    body();
///////////////////////////////////////////////////////////////////////////////