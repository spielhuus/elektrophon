/** 
 * LED Holder for backlight.
 */

CELL_HEIGHT = 15;
CELL_WALL_SIZE = 1;
CELL_WIDTH = 4;
LED_FLY = 0.75;
LED_SPACING = 3.5;

module reflector(h=CELL_HEIGHT,l=15,w=5,thickness=CELL_WALL_SIZE) {

    translate([-w/2,0,h/2]) cube([thickness,l,h],true);
    translate([w/2,0,h/2]) cube([thickness,l,h],true);
    translate([0,l/2,h/2]) rotate([0,0,90]) cube([thickness,w+thickness,h],true);
    translate([0,-l/2,h/2]) rotate([0,0,90]) cube([thickness,w+thickness,h],true);
}

reflector(l=30,w=50,thickness=1);
