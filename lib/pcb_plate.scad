/** 
 * The panel plate
 */

HP_SIZE = 5.07;
HU_SIZE = 44.45;
HOLE_FROM_SIDE = 7.5;
HOLE_FROM_TOP = 5;

SCREEW_R = 1.7;

BORDER=10;
WALL_HEIGHT=32;
WALL_THICKNESS=1;
STAND_R=3;
STAND_H=30;
STAND_HOLE=1.25;

PCB_SPACING=2;

module plate_first_layer(HP=1,HU=5,thickness=2,layer=0.3) {
	height=HU*HU_SIZE;
	width=HP*HP_SIZE;
	cube([width, height, layer]);
}

module plate(HP=1,HU=5, //size of the panel
             thickness=2, //panel thickness
             screew=SCREEW_R, //radius of the panel screw hole
             border=BORDER, //the border on top and buttom of the panel
             wall_height=WALL_HEIGHT, //side wall height
             wall_thickness=WALL_THICKNESS, //side wall thickness
             stand_r=STAND_R, //stand radius
             stand_h=STAND_H, //stand height
             stand_hole=STAND_HOLE, //stand screw hole
             pcb_spacing=PCB_SPACING // spacing between pcb and side wall
             ) {

	height=HU*HU_SIZE;
	width=HP*HP_SIZE;

	difference() {
		cube([width, height, thickness]);

		translate([HOLE_FROM_SIDE, HOLE_FROM_TOP, -1]) {
			cylinder(r=screew, h=10, $fn=100);
		}
			

		translate([HOLE_FROM_SIDE, height-HOLE_FROM_TOP, -1]) {
			cylinder(r=screew, h=10, $fn=10);
		}

		if (width > 50) {
			translate([width-HOLE_FROM_SIDE, HOLE_FROM_TOP, -1]) {
				cylinder(r=screew, h=10, $fn=10);
			}

			translate([width-HOLE_FROM_SIDE, height-HOLE_FROM_TOP, -1]) {
				cylinder(r=screew, h=10, $fn=10);
			}
		}
	}

    //draw the walls
    translate([0,height-border,thickness]) cube([width, wall_thickness, wall_height]);
    translate([wall_thickness,border,thickness]) rotate([0,0,90]) cube([height-2*border, wall_thickness, wall_height]);
    translate([width,border,thickness]) rotate([0,0,90]) cube([height-2*border, wall_thickness, wall_height]);

    //draw the stand
    _stand_x1 = wall_thickness+2.54+pcb_spacing;
    _stand_x2 = width-wall_thickness-2.54-pcb_spacing;
    _stand_y1 = border+wall_thickness+2.54+pcb_spacing;
    _stand_y2 = height-border-wall_thickness-2.54-pcb_spacing;

    difference() {
        group() {
            translate([_stand_x1,_stand_y1,thickness]) cylinder(r=stand_r, h=stand_h, $fn=50);
            translate([_stand_x1,_stand_y2,thickness]) cylinder(r=stand_r, h=stand_h, $fn=50);
            translate([_stand_x2,_stand_y1,thickness]) cylinder(r=stand_r, h=stand_h, $fn=50);
            translate([_stand_x2,_stand_y2,thickness]) cylinder(r=stand_r, h=stand_h, $fn=50);
        }
        translate([_stand_x1,_stand_y1,thickness+5]) cylinder(r=stand_hole, h=stand_h, $fn=50);
        translate([_stand_x1,_stand_y2,thickness+5]) cylinder(r=stand_hole, h=stand_h, $fn=50);
        translate([_stand_x2,_stand_y1,thickness+5]) cylinder(r=stand_hole, h=stand_h, $fn=50);
        translate([_stand_x2,_stand_y2,thickness+5]) cylinder(r=stand_hole, h=stand_h, $fn=50);
    }
}

module pcb(x=0,y=0,height=50,length=1,width=10) {
    translate([x,y,height]) {
        difference() {
            cube([width, length, 0.3]);        
            translate([2.54,2.54,-5]) cylinder(r=2.2, h=100, $fn=50);        
            translate([width-2.54,2.54,-5]) cylinder(r=2.2, h=100, $fn=50);        
            translate([2.54,length-2.54,-5]) cylinder(r=2.2, h=100, $fn=50);        
            translate([width-2.54,length-2.54,-5]) cylinder(r=2.2, h=100, $fn=50);        
        }
    }
}

module perfboard(x=0,y=0,width=1,height=50,length=1,THICKNESS=20) {
    translate([x,y,height]) {
        cube([width*2.54, length*2.54, 0.3]);        
    }
}

plate(HP=8);
