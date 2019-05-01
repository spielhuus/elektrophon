use<X-4046/panel.scad>
use<Mixer/panel.scad>
use<Stereo Mixer/panel.scad>
use<Midi/panel.scad>
use<Power Supply/panel.scad>
use<VCA1/panel.scad>
use<ADSR/panel.scad>

ARMATURES=true;

HU=3;

HP_SIZE = 5.08;
HU_SIZE = 44.45;

HEIGHT_FRONT=5;
HEIGHT_BACK=68;
LENGTH=110;

module side() {
    hull() {
        translate([0,0,0]) cylinder(h = 10, r = 20, center = true);
        translate([LENGTH,0,0]) cylinder(h = 10, r = 20, center = true);
        translate([0,HEIGHT_FRONT,0]) cylinder(h = 10, r = 20, center = true);
        translate([LENGTH,HEIGHT_BACK,0]) cylinder(h = 10, r = 20, center = true);
    }
}

module screw_holes() {
    translate([0,10,-1]) {
        rotate([0,0,30]) { 
            cylinder(h=10,r=5,center=true);
            translate([HU*HU_SIZE-10,0,0]) cylinder(h=10,r=5,center=true);
        }
    }
}

module rails() {
    cube([10,20,431.80]);
    translate([HU*HU_SIZE-10,0,0]) cube([10,20,431.80]);
}


translate([0,0,0]) side();
//translate([HP*HP_SIZE,-20,10]) side();

//  rotate([BOTTOM_DEGREE,180,0]) 
rotate([0,0,30]) rails();
translate([0,23,0]) rotate([0,0,30]) { 
//    translate([0,0,46]) rotate([90,90,0]) panel_power();  
    translate([0,0,97]) rotate([90,90,0]) panel_mixer();  
    translate([0,0,142]) rotate([90,90,0]) panel_vca();  
    translate([0,0,180]) rotate([90,90,0]) panel_adsr();  
}

screw_holes();
