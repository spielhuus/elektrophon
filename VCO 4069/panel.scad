/** VCO X-4096 **/

HP = 5.07;
LENGTH=128.5;
THICKNESS=5;
SCREEN=0.5;

use <../openscad/reflector.scad>
use <../openscad/led.scad>
use <../openscad/plate.scad>

module pot_hole() {
	translate([0,0,-1])
	cylinder(r=4, h=10, $fn=20);
}

module jack_hole() {
	translate([0,0,-1])
	cylinder(r=6, h=10, $fn=20);

//	translate([0,0,THICKNESS-1-2])
//	cylinder(r=5, h=2, $fn=20);
}

module switch_hole() {
	translate([0,0,-1])
	cylinder(r=3.25, h=10, $fn=20);
}

module triangle() {
    rotate([0,0,90]) {
	translate([0,0,0])
    rotate([0,90,45])
	cube([1,1,5], $fn=20);
    
    rotate([0,90,320])
	cube([1,1,5], $fn=20);
}
}

//translate([-10,0,10])  led();

difference() {
    plate(HP=8);
    translate( [8*HP/2, 15, SCREEN])
    linear_extrude(height = THICKNESS-SCREEN) {
        rotate([180,0,0])
            text(text = "X4069", font = "Liberation Sans", size = 5, halign = "center");
    }
    translate( [8*HP/2, 118, SCREEN])
    linear_extrude(height = THICKNESS-SCREEN) {
        rotate([180,0,0])
            text(text = "LFO", font = "Liberation Sans", size = 2, halign = "center");
    }
    translate( [8*HP/4, 118, SCREEN])
    linear_extrude(height = THICKNESS-SCREEN) {
        rotate([180,0,0])
            text(text = "PULSE", font = "Liberation Sans", size = 2, halign = "center");
    }
    translate([8*HP/4*3,116,2]) triangle();
    
    translate([8*HP/2,50,0]) pot_hole();
    translate([8*HP/2,80,0]) pot_hole();
    
    translate([8*HP/4,100,0]) jack_hole();
    translate([8*HP/4*3,100,0]) jack_hole();
    
/*    translate([8*HP/4,110,0]) jack_hole();
    translate([8*HP/4*2,110,0]) jack_hole();
    translate([8*HP/4*3,110,0]) jack_hole(); */
}
translate([8*HP/2,13,2]) reflector(radius=8, length=8*HP, led=1.5, led_holder=4 );
translate([8*HP/2,119,2]) reflector(radius=4, length=8*HP, led=1.5, led_holder=4 );

