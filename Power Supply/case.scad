/** Power Supply Case **/

use <../lib/DC_Jack.scad>

ARMATURES=false;

BOX_LENGTH=105;
BOX_WIDTH=165;
BOX_HEIGHT=40;
THICKNESS=2;

VENT_SIZE=4;
VENT_MARGIN=2;
VENT_ROWS=20;
VENT_COLS=11;

SCREW_HOLDER_R=8;
SCREW_HOLE_R=3.5;

module case_power(l=105,w=165,h=50,thickness=2,armatures=ARMATURES,r=8) {


    difference() {
            cube([l+2*thickness,w+2*thickness,h+2*thickness], center=true);
        
        //cut out inside
        translate([0,0,-thickness]) cube([l,w,h+2*thickness], center=true);

        //cut out the cilynder for the screws
        translate([l/2+thickness-r,w/2+thickness-r,2*thickness+1]) cylinder(h=h-thickness, r=r, center=true); 
        translate([l/2+thickness-r,-w/2-thickness+r,2*thickness+1]) cylinder(h=h-thickness, r=r, center=true); 
        translate([-l/2-thickness+r,w/2+thickness-r,2*thickness+1]) cylinder(h=h-thickness, r=r, center=true); 
        translate([-l/2-thickness+r,-w/2-thickness+r,2*thickness+1]) cylinder(h=h-thickness, r=r, center=true); 

        //make vent holes at the top
        _border_l=(l-(VENT_COLS*(VENT_SIZE+VENT_MARGIN)))/2;
        _border_w=(w-(VENT_ROWS*(VENT_SIZE+VENT_MARGIN)))/2;
        _border_h=(h-(5*(VENT_SIZE+VENT_MARGIN)))/2;
        translate([-l/2+_border_l-VENT_MARGIN,-w/2+_border_w-VENT_MARGIN,h/2]) 
            _vent(rows=VENT_ROWS,cols=VENT_COLS,size=VENT_SIZE,margin=VENT_MARGIN,thickness=thickness);
        translate([-l/2+_border_l-VENT_MARGIN,-w/2+THICKNESS-1,-h/2+_border_h-VENT_MARGIN]) rotate([90,0,0]) 
            _vent(rows=5,cols=VENT_COLS,size=VENT_SIZE,margin=VENT_MARGIN,thickness=thickness+4);
        translate([-l/2+_border_l-VENT_MARGIN,+w/2+thickness+1,-h/2+_border_h-VENT_MARGIN]) rotate([90,0,0]) 
            _vent(rows=5,cols=VENT_COLS,size=VENT_SIZE,margin=VENT_MARGIN,thickness=thickness+2);
        translate([l/2-1,-w/2+_border_w,-h/2+_border_h-VENT_MARGIN]) rotate([90,0,90]) 
            _vent(rows=5,cols=VENT_ROWS,size=VENT_SIZE,margin=VENT_MARGIN,thickness=thickness+4);
        translate([-l/2-thickness,-w/2+_border_w,-h/2+_border_h-VENT_MARGIN]) rotate([90,0,90]) 
            _vent(rows=5,cols=VENT_ROWS-5,size=VENT_SIZE,margin=VENT_MARGIN,thickness=thickness+4);

        //DC Jacks
        rotate([0,90,0]) translate([h/2,w/2-25,-l/2]) DC_jack_hole(height=100);
        rotate([0,90,0]) translate([h/4-10,w/2-25,-l/2-thickness]) DC_jack_hole(height=100);
    }
    _screw_holes(l=l,w=w,h=h,thickness=thickness); 

    if( armatures ) {
        //DC Jacks
        rotate([0,90,0]) translate([h/2-15,w/2-25,-l/2]) DC_jack();
        rotate([0,90,0]) translate([h/2-30,w/2-25,-l/2]) DC_jack();
    }
}

module case_power_plate(l=100,w=160,h=50,r=8,rh=SCREW_HOLE_R,thickness=2) {

    difference() {
        group() {
            cube([l+2*thickness,w+2*thickness,thickness], center=true);
            translate([l/2+thickness-r,w/2+thickness-r,2*thickness-thickness]) cylinder(h=thickness, r=r, center=true); 
            translate([l/2+thickness-r,-w/2-thickness+r,2*thickness-thickness]) cylinder(h=thickness, r=r, center=true); 
            translate([-l/2-thickness+r,w/2+thickness-r,2*thickness-thickness]) cylinder(h=thickness, r=r, center=true); 
            translate([-l/2-thickness+r,-w/2-thickness+r,2*thickness-thickness]) cylinder(h=thickness, r=r, center=true); 
        }

        //make the screwholes
        translate([l/2+thickness-r,w/2+thickness-r,1*thickness]) cylinder(h=4*thickness, r=rh, center=true); 
        translate([l/2+thickness-r,-w/2-thickness+r,1*thickness]) cylinder(h=4*thickness, r=rh, center=true); 
        translate([-l/2-thickness+r,w/2+thickness-r,1*thickness]) cylinder(h=4*thickness, r=rh, center=true); 
        translate([-l/2-thickness+r,-w/2-thickness+r,1*thickness]) cylinder(h=4*thickness, r=rh, center=true); 

        //cut the bolts
        translate([0,w/2-thickness/2,10]) rotate([90,0,0]) cube([l+2*thickness,20,thickness],center=true);
        translate([0,-w/2-thickness+thickness/2,10]) rotate([90,0,0]) cube([l+2*thickness,20,thickness],center=true);
        translate([l/2+thickness-thickness/2,0,10]) rotate([0,90,0]) cube([20,w+thickness,thickness],center=true);
        translate([-l/2-2*thickness,0,10]) translate([-l/2-thickness/2,0,10]) rotate([0,90,0]) cube([20,w+thickness,thickness],center=true);
   }
}

color("white") case_power(l=BOX_LENGTH,w=BOX_WIDTH,h=BOX_HEIGHT,thickness=THICKNESS,armatures=ARMATURES); 
color("red") translate([0,0,-BOX_HEIGHT/2-24]) case_power_plate(l=BOX_LENGTH,w=BOX_WIDTH,h=BOX_HEIGHT,r=SCREW_HOLDER_R,thickness=THICKNESS);
//projection(cut = true) translate([140,140,25]) rotate([0,0,0]) case_power(l=BOX_LENGTH,w=BOX_WIDTH,h=BOX_HEIGHT,thickness=THICKNESS,border=1);

module _vent(rows=20,cols=10,size=5,margin=2,thickness=2) {
    for(i=[0:cols])
        for(j=[0:rows])
            translate([i*(size+margin),j*(size+margin),0])
                cube([size,size,thickness]);
}

module _screw_holes(l=100,w=160,h=50,thickness=2,r=8) {

    difference() {
        translate([l/2+thickness-r,w/2+thickness-r,2*thickness]) cylinder(h=h-thickness, r=r, center=true); 
        translate([l/2+thickness-r,w/2+thickness-r,thickness]) cylinder(h=h+(thickness), r=2, center=true);
    }
    difference() {
        translate([l/2+thickness-r,-w/2-thickness+r,2*thickness]) cylinder(h=h-thickness, r=r, center=true); 
        translate([l/2+thickness-r,-w/2-thickness+r,thickness]) cylinder(h=h+(2*thickness), r=2, center=true);

    }
    difference() {
        translate([-l/2-thickness+r,w/2+thickness-r,2*thickness]) cylinder(h=h-thickness, r=r, center=true); 
        translate([-l/2-thickness+r,w/2+thickness-r,thickness]) cylinder(h=h+(2*thickness), r=2, center=true);
    }
    difference() {
        translate([-l/2-thickness+r,-w/2-thickness+r,2*thickness]) cylinder(h=h-thickness, r=r, center=true); 
        translate([-l/2-thickness+r,-w/2-thickness+r,thickness]) cylinder(h=h+(2*thickness), r=2, center=true);

    }
}