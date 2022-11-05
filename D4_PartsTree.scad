/*
    Isaiah Keating
    grill v2.0
*/

//$fa = 0.1;
//$fs = 0.4;
$fn= 80;

/*
    Tamiya hex colors
    
    #404a13     Olive Drab  XF-62
    #ff7f00     Orange      X-6
*/

module D4_PartsTree(){

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
        
        color(hex_color)
            translate([33.467,-4.915,-1.04])
                cylinder(3,2.540,2.540,true);//connector pin on back 2.540 + .46 to join
        color(hex_color)
            translate([-33.467,-4.915,-1.04])
                cylinder(3,2.540,2.540,true);//connector pin on back 2.540 + .46 to join
    }
 
hex_color = "#404a13";    
color(hex_color)
difference()//fixes extruded circle in top notch.  Put this into vent_six ????????????
    {
    vent_six();
    translate([0,20.955])
        cube([2.540,2.540,20], center = true);
    }
    
//* 
grill_body();
//*/
    
module vent_connector()
    {
        hex_color = "#404a13";
        color(hex_color)
        difference()
            {
                color(hex_color)
                cube([8.026,6.353,3], center = false);
                
                translate([0,5.353,2])
                    cube([8.026,6.353,3]);
                translate([0,-5.353,2])
                    cube([8.026,6.353,3]);
            }

        color(hex_color)
            rotate([0,90,0])
                translate([-2,1,0])
                    cylinder(8.026, 1, center = false);
        color(hex_color)
            rotate([0,90,0])
                translate([-2,5.353,0])
                    cylinder(8.026, 1, center = false);
    }
//*
    color(hex_color)
        difference()
            {
                translate([8.026,-15.24,0])
                    vent_connector();
                translate([11.2395,-12.065,0])
                    cylinder(h = 10, r = 1.587, center = true);
            }
    color(hex_color)
        difference()
            {
                translate([-16.052,-15.24,0])
                    vent_connector();
                translate([-11.2395,-12.065,0])
                    cylinder(h = 10, r = 1.587, center = true);
            }
//*/
module grill_hinge()
    {
        hex_color = "#404a13";
        difference()
            {
                color(hex_color)
                    cube([7.75,5.25,1], center = false);
                color(hex_color)
                    translate([-.001,3.50,-1])
                        cube([1.751,1.751,5], center = false);
                color(hex_color)
                    translate([6.001,3.50,-1])
                        cube([1.751,1.751,5], center = false);
            }
        color(hex_color)
            translate([1.75,3.5,0])
                cylinder(1, d = 3.5, center = false);
        color(hex_color)
            translate([6,3.5,0])
                cylinder(1, d = 3.5, center = false);
        color(hex_color)
            translate([0,0,0.4])
                cube([7.75,2.6,1.7], center = false);//1.3 r
        color(hex_color)
            rotate([0,90,0])
                translate([-2.2,1.3,0])
                    cylinder(7.75, d = 2.6, center = false);
            
        p0 = [0,0];
        p1 = [0,3.55];
        p2 = [2.42,0];
        p3 = [0,0];
        points = [p0, p1, p2, p3,];
            translate([4.25,1.7,0.999])
                color(hex_color)
                    rotate([0,-90,0])
                        linear_extrude(height=0.75)
                            polygon(points);
                            
        color(hex_color)
            translate([1.75,3.9,0])
                cylinder(2, d = 1.5, center = false);
        color(hex_color)
            translate([6,3.9,0])
                cylinder(2, d = 1.5, center = false);
        
    }
//*
translate([25.905,-23.749,2.75])
    grill_hinge();
    
translate([-33.655,-23.749,2.75])
    grill_hinge();
//*/
    
module slot_connectors()
    {
        hex_color = "#404a13";
        color(hex_color)
        difference()
            {
                cube([1.778,7.493,7.820], center = false);//added .200 to z to merge
                rotate([0,90,0])
                    translate([-3.8735,3.7465,-5])
                        cylinder(10, d = 3.175, center = false);
                translate([-2,2.159,-.001])
                    cube([5,3.175,3.875], center = false);
            }
    }
//*
translate([34.798,-19.939,-7.620])
    slot_connectors();
translate([-36.449,-19.939,-7.620])
    slot_connectors();
//*/

///*
}

hex_color = "#ff7f00";
    color(hex_color)
        rotate([10,70,30])
            translate([0,0,0])
                D4_PartsTree();
//*/
