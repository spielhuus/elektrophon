/** 
 * draw banana plug and hole
 */

/**
 * draw the hole 
 */
module banana_plug_hole( radius=6,height=10 ) {
	translate([0,0,-1])
	cylinder(r=radius, h=height, $fn=10);
}

/** 
 * draw the plug 
 */
module banana_plug() {
    translate([ 80,0,0 ])
        rotate( [0,180,0] )
            color("yellow") 
                import( "../lib/Banana_Plug.stl", convexity = 10 );
}

banana_plug();
banana_plug_hole();
