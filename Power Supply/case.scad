/** Power Supply Case **/

module case_power(l=100,w=160,h=50,thickness=2,border=10) {

    color("white") difference() {
        group() {
            translate([0,0,h/2]) cube([l,w,thickness], center=true);
            cube([l-2*border,w-2*border,h], center=true);
        }
        translate([0,0,thickness]) cube([l-2*border-thickness,w-2*border-thickness,h-thickness], center=true);
    }


    translate([0,0,h]) cube([l,w,thickness], center=true);
}

case_power(); 
