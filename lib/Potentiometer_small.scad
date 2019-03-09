/** 
 * draw potentiometer wWH118 and hole
 */

/**
 * draw the hole 
 */
module potentiometer_hole( radius=6,height=10 ) {
	translate([0,0,-1])
    	cylinder(r=radius, h=height, $fn=10);
}

/** 
 * draw the plug 
 */
module potentiometer() {
    import( "../lib/Potentiometer_small.stl", convexity = 10 );
	translate([0,0,11]) import( "../lib/Turn_Knob_small.stl", convexity = 10 );
}

translate([0,0,0]) potentiometer();
translate([0,0,0]) potentiometer_hole();
 
