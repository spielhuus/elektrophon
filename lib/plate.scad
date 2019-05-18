/** 
 * The panel plate
 */

HP_SIZE = 5.07;
HU_SIZE = 44.45;

HOLE_R = 1.7;
SCREEW_R = 3;
HOLE_FROM_SIDE = 7.5;
HOLE_FROM_TOP = 5;

module plate_first_layer(HP=1,HU=5,thickness=2,layer=0.3) {
	height=HU*HU_SIZE;
	width=HP*HP_SIZE;
	cube([width, height, layer]);
}

module plate(HP=1,HU=5,thickness=2,armatures=false,screew=SCREEW_R) {

	height=HU*HU_SIZE;
	width=HP*HP_SIZE;

	difference() {
		cube([width, height, thickness]);

		translate([HOLE_FROM_SIDE, HOLE_FROM_TOP, -1]) {
			cylinder(r=HOLE_R, h=10, $fn=100);
		}
			

		translate([HOLE_FROM_SIDE, height-HOLE_FROM_TOP, -1]) {
			cylinder(r=HOLE_R, h=10, $fn=10);
		}

		if (width > 50) {
			translate([width-HOLE_FROM_SIDE, HOLE_FROM_TOP, -1]) {
				cylinder(r=HOLE_R, h=10, $fn=10);
			}

			translate([width-HOLE_FROM_SIDE, height-HOLE_FROM_TOP, -1]) {
				cylinder(r=HOLE_R, h=10, $fn=10);
			}
		}
	}

	if( armatures ) {
		translate([0,0,thickness]) color("red") cube([width, 10, 0.1]);
		translate([0,height-10,thickness]) color("red")  cube([width, 10, 0.1]);
	}
}

plate(HP=8,armatures=true);