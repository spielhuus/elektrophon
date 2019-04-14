/** stand for the pcb */

PCB_RASTER=2.54;

module stand(x=0, y=0, count_x=10, count_y=10, r=3, h=30, hole=1,thickness=3,pcb_raster=PCB_RASTER) {
    translate([x, y, thickness]) {
        difference() {
            group() {
                cylinder(r=r, h=h, $fn=50);
                translate([0,PCB_RASTER*(count_y-1),0]) cylinder(r=r, h=h, $fn=50);
                if(count_x>10) {
                    translate([PCB_RASTER*(count_x-1),0,0]) {
                        cylinder(r=r, h=h, $fn=50);
                        translate([0,PCB_RASTER*(count_y-1),0]) cylinder(r=r, h=h, $fn=50);
                    }
                }
            }
        cylinder(r=hole, h=h, $fn=50);
        translate([0,PCB_RASTER*(count_y-1),0]) cylinder(r=hole, h=h, $fn=50);
        if(count_x>10) {
            translate([PCB_RASTER*(count_x-1),0,0]) {
                cylinder(r=hole, h=h, $fn=50);
                translate([0,PCB_RASTER*(count_y-1),0]) cylinder(r=hole, h=h, $fn=50);
                }
            }
        }
    } 
}
