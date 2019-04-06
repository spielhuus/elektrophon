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

        _count = floor(l/spacing)-1;
        _spacing = l/(_count+1);
        _border = l - (_spacing*_count);
        translate([_spacing/2,-l/2,h]) {
            for(i=[0:_count-1]) {
                translate([0,(i*_spacing)+_border-0.75,0]) cube([CELL_WIDTH,fly,h/2], center=true);
                translate([0,(i*_spacing)+_border+0.75,0]) cube([CELL_WIDTH,fly,h/2], center=true);
            }
        }
    }
    translate([-cell/2+2*thickness,l/2,h/2]) rotate([0,0,90]) cube([thickness,cell+2*thickness,h],true);
    translate([cell/2-2*thickness,-l/2,h/2]) rotate([0,0,90]) cube([thickness,cell+2*thickness,h],true);
}

reflector();
