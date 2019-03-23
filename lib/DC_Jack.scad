/** 
 * draw DC Jack and hole
 */

/**
 * draw the hole 
 */
module DC_jack_hole( radius=6,height=20 ) {
   	cylinder(r=radius, h=height, $fn=10);
}

/** 
 * draw the plug 
 */
module DC_jack() {
    rotate([270,0,0]) translate([0,-8,0]) import( "../lib/DC_Jack.stl", convexity = 10 );
}

translate([0,0,0]) DC_jack();
translate([0,0,0]) DC_jack_hole();