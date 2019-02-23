HP_SIZE = 5.07;
HEIGHT = 128.5;

HOLE_R = 1.7;
HOLE_FROM_SIDE = 7.5;
HOLE_FROM_TOP = 3;

module plate(HP=1, thickness=2) {

width=HP*HP_SIZE;
    
difference() {
	cube([width, HEIGHT, thickness]);

	translate([HOLE_FROM_SIDE, HOLE_FROM_TOP, -1])
	cylinder(r=HOLE_R, h=10, $fn=10);

	translate([HOLE_FROM_SIDE, HEIGHT-HOLE_FROM_TOP, -1])
	cylinder(r=HOLE_R, h=10, $fn=10);

	if (width > 50) {
		translate([width-HOLE_FROM_SIDE, HOLE_FROM_TOP, -1])
		cylinder(r=HOLE_R, h=10, $fn=10);

		translate([width-HOLE_FROM_SIDE, HEIGHT-HOLE_FROM_TOP, -1])
		cylinder(r=HOLE_R, h=10, $fn=10);
	}
}
}

plate(HP=8);