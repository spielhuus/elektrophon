/** 
 * draw potentiometer and hole
 */

/**
 * draw the hole 
 */
module potentiometer_hole(radius=3.5,thickness=10) {
	group() {
		translate([0,0,-thickness]) cylinder(r=radius, h=thickness, $fn=50);
		translate([6,0,-thickness]) cylinder(r=2.5/2, h=3, $fn=50);
	}
}

/** 
 * draw the plug 
 */
module potentiometer() {
	translate([0,0,-12]) import( "../lib/Potentiometer_small.stl", convexity = 10 );
	translate([0,0,2]) import( "../lib/Turn_Knob_small.stl", convexity = 10 );
}

translate([0,0,0]) potentiometer();
translate([0,0,0]) potentiometer_hole();
