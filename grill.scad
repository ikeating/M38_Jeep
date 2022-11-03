/*
    Isaiah Keating
    grill v2.0
*/

$fa = 0.1;
$fs = 0.4;

/*
    Tamiya hex colors
    
    #404a13     Olive Drab  XF-62
    #ff7f00     Orange      X-6
*/

module vent()
    {
    y = 6;//38mm
    x = -2;//62626262626 46mm
    hex_color = "#404a13";       
    color(hex_color)
    difference()
        {
        p0 = [6+x, 16+y+x];
        p1 = [6+x, -(16+y+x)];
        p2 = [-(6+x), -(16+y+x)];
        p3 = [-(6+x), 16+y+x];
        p4 = [6+x, 16+y+x];
        points = [p0, p1, p2, p3, p4];
        linear_extrude(height=3)                //3mm thick
        polygon(points);//first
            
        translate([0,10+y,0])
        cylinder(h=20,r=4+(x/2),center=true);
        translate([0,-(10+y),0])
        cylinder(h=20,r=4+(x/2),center=true);
        cube([8+x,20.001+(y*2),20], center = true);
        
        translate([0,10+y,12])
        cylinder(h=20,r=5+(x/2),center=true);
        translate([0,-(10+y),12])
        cylinder(h=20,r=5+(x/2),center=true);
        translate([0,0,12])
        cube([10+x,20.001+(y*2),20], center = true);
        }
        
    translate([0,0,2])
        {
        translate([0,-(10+y),0])
            {
            color(hex_color)
            rotate_extrude(angle = -180)
                {
                translate([5+(x/2), 0, 0])
                circle(r = 1);
                }
            }

        translate([0,10+y,0])
            {
            color(hex_color)
            rotate_extrude(angle = 180)
                {
                translate([5+(x/2), 0, 0])
                circle(r = 1);
                }
            }
        
        color(hex_color)
        rotate([90,0,0])
        translate([-(5+(x/2)),0,0])
        cylinder(h=(20.001+(y*2)),r=1,center=true);

        color(hex_color)
        rotate([90,0,0])
        translate([5+(x/2),0,0])
        cylinder(h=(20.001+(y*2)),r=1,center=true);
        }
    }

module vent_six()
    {
    translate([-20,0,0])
    vent();

    translate([-12,0,0])
    vent();

    translate([-4,0,0])
    vent();

    translate([4,0,0])
    vent();

    translate([12,0,0])
    vent();

    translate([20,0,0])
    vent();
    }
 
module grill_body()
    {
        hex_color = "#404a13";
        color(hex_color)
        difference()
        {
        p0  = [-1.27,22.225];
        p1  = [-42.418,21.039];
        p2  = [-42.418,15.197];//center of radius
        p3  = [-48.26,15.197];
        p4  = [-48.26,2.167];
        p5  = [-44.45,2.167];
        p6  = [-38.1,-9.271];
        p7  = [-38.1,-19.939];
        p8  = [-33.655,-19.939];
        p9  = [-33.655, -23.749];
        p10 = [33.655, -23.749];
        p11 = [33.655,-19.939];
        p12 = [38.1,-19.939];
        p13 = [38.1,-9.271];
        p14 = [44.45,2.167];
        p15 = [48.26,2.167];
        p16 = [48.26,15.197];
        p17 = [42.418,15.197];//center of radius
        p18 = [42.418,21.039];
        p19 = [1.27,22.225];
        p20 = [1.27,19.685];
        p21 = [-1.27,19.685];
        p22 = [-1.27,22.225];
        points = [p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, p19, p20, p21, p22];
        linear_extrude(height=3)                //3mm thick
            polygon(points);
                cube([48,40,20], center = true);
        }
        color(hex_color)
            translate([42.418,15.197])
                cylinder(3,5.842,5.842,false);
        color(hex_color)
            translate([-42.418,15.197])
                cylinder(3,5.842,5.842,false);
    }
 
hex_color = "#404a13";    
color(hex_color)
difference()
    {
    vent_six();
    translate([0,20.955])
        cube([2.540,2.540,20], center = true);
    }
grill_body();


