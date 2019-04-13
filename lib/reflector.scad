/** 
 * LED Holder for backlight.
 */

CELL_HEIGHT = 15;
CELL_WALL_SIZE = 1;
CELL_WIDTH = 4;
LED_FLY = 0.75;
LED_SPACING = 3.5;

module reflector(h=CELL_HEIGHT,l=15,w=5,cell=CELL_WIDTH, thickness=CELL_WALL_SIZE,fly=LED_FLY,spacing=LED_SPACING) {

    translate([-w/2,0,h/2]) cube([thickness,l,h],true);

    difference() {
        translate([w/2,0,h/2]) cube([thickness,l,h],true);
    }
    translate([-cell/2+2*thickness,l/2,h/2]) rotate([0,0,90]) cube([thickness,cell+2*thickness,h],true);
    translate([cell/2-2*thickness,-l/2,h/2]) rotate([0,0,90]) cube([thickness,cell+2*thickness,h],true);
}

reflector();
