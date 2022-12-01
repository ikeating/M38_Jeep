/*
    Isaiah Keating
*/

brown =             "#4e2207";//    X-9
olive_drab =        "#404a13";//    XF-62
orange =            "#ff7f00";//    X-6
metallic_grey =     "#5c6164";//    XF-56
semi_gloss_black =  "#020202";//    X-18 ?

include </Users/isaiahkeating/Desktop/Cad/M38_Jeep/grill/grill.scad>

include </Users/isaiahkeating/Desktop/Cad/M38_Jeep/winchBody/winchBody.scad>

//include </Users/isaiahkeating/Desktop/Cad/M38_Jeep/body/body.scad>

//$fn = 10;

//color(olive_drab)
    translate([12.4,90,-5])
        import ("/Users/isaiahkeating/Desktop/Cad/M38_Jeep/body/body60.stl");

color(metallic_grey)
    rotate([0,0,0])
        resize([0,0,0], auto=[true,true,true])
            translate([0,-60,-25])
                import ("/Users/isaiahkeating/Desktop/Cad/M38_Jeep/hook/hook_resized_autoCad.stl");

//color(metallic_grey)
    rotate([0,0,0])
        resize([50,0,0], auto=[true,true,true])
            translate([0,-10,-5])
                import("/Users/isaiahkeating/Desktop/Cad/M38_Jeep/winchFace/winchFaceAutoCadResized.stl");

rotate([90,0,0])
    translate([0,-12,35.033])
        A13_winch_cable();
        
rotate([90,0,0])
    translate([0,0,22])
        grill();

*translate([12.4,90,-5])
    body();
///////////////////////////////////////////////////////////////////////////////