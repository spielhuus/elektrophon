/** silk screen for the different wave forms */

module sine(h=10,spacing=5,count=4,thickness=2,w=4) {
    translate([spacing*(count-1)/2-1,thickness,-h/2]) {
        for(i=[0:360]) {
            translate([-i/30,0,(thickness+2)*sin(-i)])
                rotate([90,0,0]) cylinder(r=thickness/2,h=thickness);
        }
    }
}

module saw(h=10,spacing=5,count=4,thickness=2,w=4) {
    translate([spacing*(count-1)/2-1,0,0]) {
        hull() {
            translate([0,w,-h]) rotate([90,0,0]) cylinder(r=thickness/2,h=w);
            translate([0,w,0]) rotate([90,0,0]) cylinder(r=thickness/2,h=w);
        }
        hull() {
            translate([0,w,0]) rotate([90,0,0]) cylinder(r=thickness/2,h=w);
            translate([-3*spacing,w,-h]) rotate([90,0,0]) cylinder(r=thickness/2,h=w);
            
        }
    }
}    

module rect(h=10,spacing=5,count=4,thickness=2,w=4) {
    translate([spacing*(count-1)/2-1,0,0]) {
        for(i=[0:count-1]) {
            translate([-i*spacing,0,0]) rotate([0,90,0]) cube([h,w,thickness]);
            if( i<count-1) {
                if(i%2==0) {
                    translate([-i*spacing,0,0]) rotate([0,180,0]) cube([spacing,w,thickness]);
                } else {
                    translate([-i*spacing,0,-h+thickness]) rotate([0,180,0]) cube([spacing,w,thickness]);
                }
            }
        }   
    }
}    

module pulse(h=10,spacing=5,count=2,thickness=2,w=4) {
    translate([spacing*(count-1)/2-1,0,0]) {
        for(i=[0:count-1]) {
            if(i<2) {
                translate([-i*spacing,0,0]) rotate([0,90,0]) cube([h,w,thickness]);
            }
            if(i<1) {
                translate([-i*spacing,0,0]) rotate([0,180,0]) cube([spacing,w,thickness]);
            } else {
                translate([-i*spacing,0,-h+thickness]) rotate([0,180,0]) cube([spacing,w,thickness]);
            }
        }
    }
}    

module vari(h=10,spacing=5,count=4,thickness=2,w=4) {
    translate([spacing*(count-1)/2-1,0,0]) {
        hull() {
            translate([0,w,-h/3]) rotate([90,0,0]) cylinder(r=thickness/2,h=w);
            translate([0,w,-h/3*2]) rotate([90,0,0]) cylinder(r=thickness/2,h=w);
        }
        hull() {
            translate([0,w,-h/3]) rotate([90,0,0]) cylinder(r=thickness/2,h=w);
            translate([-spacing/2,w,0]) rotate([90,0,0]) cylinder(r=thickness/2,h=w);
        }        
        hull() {
            translate([-spacing/2,w,0]) rotate([90,0,0]) cylinder(r=thickness/2,h=w);
            translate([-spacing,w,-h/3]) rotate([90,0,0]) cylinder(r=thickness/2,h=w);
        }
        hull() {
            translate([-spacing,w,-h/3]) rotate([90,0,0]) cylinder(r=thickness/2,h=w);
            translate([-spacing,w,-h/3*2]) rotate([90,0,0]) cylinder(r=thickness/2,h=w);
        }
        hull() {
            translate([-spacing,w,-h/3*2]) rotate([90,0,0]) cylinder(r=thickness/2,h=w);
            translate([-2*spacing+spacing/2,w,-h]) rotate([90,0,0]) cylinder(r=thickness/2,h=w);
        }
        hull() {
            translate([-2*spacing+spacing/2,w,-h]) rotate([90,0,0]) cylinder(r=thickness/2,h=w);
            translate([-2*spacing,w,-h/3*2]) rotate([90,0,0]) cylinder(r=thickness/2,h=w);
        }
        hull() {
            translate([-2*spacing,w,-h/3*2]) rotate([90,0,0]) cylinder(r=thickness/2,h=w);
            translate([-2*spacing,w,-h/3]) rotate([90,0,0]) cylinder(r=thickness/2,h=w);
        }
        hull() {
            translate([-2*spacing,w,-h/3]) rotate([90,0,0]) cylinder(r=thickness/2,h=w);
            translate([-3*spacing+spacing/2,w,0]) rotate([90,0,0]) cylinder(r=thickness/2,h=w);
        }
        hull() {           
            translate([-3*spacing+spacing/2,w,0]) rotate([90,0,0]) cylinder(r=thickness/2,h=w);
            translate([-3*spacing,w,-h/3]) rotate([90,0,0]) cylinder(r=thickness/2,h=w);
        }
        hull() {
            translate([-3*spacing,w,-h/3]) rotate([90,0,0]) cylinder(r=thickness/2,h=w);
            translate([-3*spacing,w,-h/3*2]) rotate([90,0,0]) cylinder(r=thickness/2,h=w);
        }
    }
}    

module triangle(h=10,spacing=5,count=4,thickness=2,w=4) {
    translate([spacing*(count-1)/2-1,0,0]) {
        hull() {
            translate([0,w,-h]) rotate([90,0,0]) cylinder(r=thickness/2,h=w);
            translate([-1.5*spacing,w,0]) rotate([90,0,0]) cylinder(r=thickness/2,h=w);
        }
        hull() {
            translate([-1.5*spacing,w,0]) rotate([90,0,0]) cylinder(r=thickness/2,h=w);
            translate([-3*spacing,w,-h]) rotate([90,0,0]) cylinder(r=thickness/2,h=w);
            
        }
    }
}    

color("white") rect(); 
color("green") pulse(); 
color("blue") vari(); 
color("red") saw();
color("Orange") triangle();
color("Magenta") sine();

