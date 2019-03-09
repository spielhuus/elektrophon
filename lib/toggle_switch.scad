/** 
 * draw toggle swwitch and hole
 */

/**
 * draw the hole 
 */
module switch_hole( radius=6,height=10 ) {
	translate([0,0,-1])
    	cylinder(r=radius, h=height, $fn=10);
}

/** 
 * draw the switch
 */
module switch() {
    rotate([-90,0,0]) import( "../lib/toggle_switch.stl", convexity = 10 );
}

translate([0,0,0]) switch();
translate([0,0,0]) switch_hole();
 
 
