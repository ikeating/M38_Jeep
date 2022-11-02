/*
    Isaiah Keating
    grill v2.0
*/

$fa = 0.1;
$fs = 0.4;

module vent()
    {
    y = 15;
        
    color("#404b13") 
    difference()
        {
        p0 = [7, 20+y];
        p1 = [7, -(20+y)];
        p2 = [-7, -(20+y)];
        p3 = [-7, 20+y];
        p4 = [7, 20+y];
        points = [p0, p1, p2, p3, p4];
        linear_extrude(height=3)
        polygon(points);//first
            
        translate([0,10+y,0])
        cylinder(h=20,r=4,center=true);
        translate([0,-(10+y),0])
        cylinder(h=20,r=4,center=true);
        cube([8,20.001+(y*2),20], center = true);
        
        translate([0,10+y,12])
        cylinder(h=20,r=5,center=true);
        translate([0,-(10+y),12])
        cylinder(h=20,r=5,center=true);
        translate([0,0,12])
        cube([10,20.001+(y*2),20], center = true);
        }
        
    translate([0,0,2])
        {
        translate([0,-(10+y),0])
            {
            color("#404b13")
            rotate_extrude(angle = -180)
                {
                translate([5, 0, 0])
                circle(r = 1);
                }
            }

        translate([0,10+y,0])
            {
            color("#404b13")
            rotate_extrude(angle = 180)
                {
                translate([5, 0, 0])
                circle(r = 1);
                }
            }
        
        color("#404b13")
        rotate([90,0,0])
        translate([-5,0,0])
        cylinder(h=(20.001+(y*2)),r=1,center=true);

        color("#404b13")
        rotate([90,0,0])
        translate([5,0,0])
        cylinder(h=(20.001+(y*2)),r=1,center=true);
        }
    }

module vent_six()
    {
    translate([-35,0,0])
    vent();

    translate([-21,0,0])
    vent();

    translate([-7,0,0])
    vent();

    translate([7,0,0])
    vent();

    translate([21,0,0])
    vent();

    translate([35,0,0])
    vent();
    }

vent_six();




