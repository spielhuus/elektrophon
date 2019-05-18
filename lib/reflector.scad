/** 
 * LED Holder for backlight.
 */

CELL_HEIGHT = 15;
CELL_WALL_SIZE = 1;
CELL_WIDTH = 4;
LED_FLY = 0.75;
LED_SPACING = 3.5;

module reflector(h=CELL_HEIGHT,l=15,w=6,thickness=CELL_WALL_SIZE) {

    translate([0,0,h/2]) {
        difference() {
                cube([w+2*CELL_WALL_SIZE,l+2*CELL_WALL_SIZE,h],true);
                cube([w,l,h+2],true);
        }
    }

/*    translate([-w/2,0,h/2]) cube([thickness,l,h],true);
    translate([w/2,0,h/2]) cube([thickness,l,h],true);
    translate([0,l/2,h/2]) rotate([0,0,90]) cube([thickness,w+thickness,h],true);
    translate([0,-l/2,h/2]) rotate([0,0,90]) cube([thickness,w+thickness,h],true); */
}

module diffusor(h=CELL_HEIGHT,l=15,w=6,thickness=CELL_WALL_SIZE) {

    difference() {
        translate([0,0,0]) rotate([0,90,0]) cylinder(r=l/2-2,h=w-2,center=true);
        translate([0,0,-10]) cube([w,l,20],true);
    //    translate([0,l/2,h/2]) rotate([0,0,90]) cube([thickness,w+thickness,h],true);
    //    translate([0,-l/2,h/2]) rotate([0,0,90]) cube([thickness,w+thickness,h],true);
    }

        translate([0,0,0]) rotate([0,90,0]) cylinder(r=2,h=w*2,center=true);

}


//reflector(l=30,w=50,thickness=1);
diffusor(l=30,w=50,thickness=1);
