/** 
 * draw potentiometer and hole
 */


/**
 * draw the hole 
 */
module potentiometer_hole(radius=4,thickness=5) {
	group() {
		translate([0,0,-thickness-1]) {
			cylinder(r=radius, h=thickness*2, $fn=100);
			translate([-8,0,-4.5]) cylinder(r=1.5, h=thickness*2, $fn=100);
		}
	}
}

/** 
 * draw the plug 
 */
module potentiometer() {
	translate([0,0,-12]) import( "../lib/Potentiometer_small.stl", convexity = 10 );
	translate([0,0,2]) import( "../lib/Turn_Knob_small.stl", convexity = 10 );
}

difference() {
	translate([0,0,0]) potentiometer_holder();
	translate([0,0,0]) potentiometer_hole();
}
