/** 
 * draw potentiometer wWH118 and hole
 */

/**
 * draw the hole 
 */
module WH118_hole( radius=6,height=10 ) {
	translate([0,0,-1])
    	cylinder(r=radius, h=height, $fn=10);
}

/** 
 * draw the plug 
 */
module WH118() {
    import( "../lib/potentiometer-wh118.stl", convexity = 10 );
}

translate([0,0,0]) WH118();
translate([0,0,0]) WH118_hole();