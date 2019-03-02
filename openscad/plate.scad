HP_SIZE = 5.07;
HU_SIZE = 44.45;

HOLE_R = 1.7;
HOLE_FROM_SIDE = 7.5;
HOLE_FROM_TOP = 3;

module plate(HP=1, thickness=2, HU=5 ) {

height=HU*HU_SIZE;
width=HP*HP_SIZE;
    
difference() {
	cube([width, height, thickness]);

	translate([HOLE_FROM_SIDE, HOLE_FROM_TOP, -1])
	cylinder(r=HOLE_R, h=10, $fn=10);

	translate([HOLE_FROM_SIDE, height-HOLE_FROM_TOP, -1])
	cylinder(r=HOLE_R, h=10, $fn=10);

	if (width > 50) {
		translate([width-HOLE_FROM_SIDE, HOLE_FROM_TOP, -1])
		cylinder(r=HOLE_R, h=10, $fn=10);

		translate([width-HOLE_FROM_SIDE, height-HOLE_FROM_TOP, -1])
		cylinder(r=HOLE_R, h=10, $fn=10);
	}
}
}

plate(HP=8);