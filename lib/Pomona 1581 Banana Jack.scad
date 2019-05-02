/** 
 * small banana plug
 */

/**
 * draw the holder 
 */
module banana_holder(radius=4.5,height=10) {
    cylinder(r=5.5, h=3, $fn=50);
}

/**
 * draw the hole 
 */
module banana_hole(radius=4,height=10,thickness=1,holder=10) {
    translate([0,0,-thickness-1]) cylinder(r=radius, h=thickness*2+holder, $fn=100);
}

/** 
 * draw the plug 
 */
module banana() {
    rotate([270,0,0]) translate([0,-20.9,0]) scale([ 0.85, 0.85, 0.85])  import( "../lib/Pomona 1581 Banana Jack.stl", convexity = 1 );
}

translate([0,0,0]) banana();
translate([0,0,0]) banana_hole(); 
