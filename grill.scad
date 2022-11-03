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
        p0  = [-48.26,22.225];
        p1  = [-48.26,2.167];
        p2  = [-44.45,2.167];
        p3  = [-38.1,-9.271];
        p4  = [-38.1,-19.939];
        p5  = [-33.655,-19.939];
        p6  = [-33.655, -23.749];
        p7  = [33.655, -23.749];
        p8  = [33.655,-19.939];
        p9  = [38.1,-19.939];
        p10  = [38.1,-9.271];
        p11 = [44.45,2.167];
        p12 = [48.26,2.167];
        p13 = [48.26,22.225];
        points = [p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13];
        linear_extrude(height=3)                //3mm thick
        polygon(points);
        cube([48,40,20], center = true);
        }
    }

union(){  
vent_six();
grill_body();
}



