module sine() {
    for(i=[0:360]) {
        translate([i/10,0,10*sin(i)])
        rotate(0,90,0) cylinder(r=1,h=1);
    }
}

module saw() {
    translate([35,0,10]) {
        rotate([0,90,0]) cube([20,1.4,1.4]);
        translate([0,0,0]) rotate([0,150,0]) cube([40,1.4,1.4]);
    }    
}    

module triangle() {
    translate([35,0,-9])
        rotate([0,225,0]) cube([25,4,4]);
    translate([17,0,9])
        rotate([0,135,0]) cube([25,4,4]);
    
}    

module rect() {
    translate([35,0,10]) {
        rotate([0,90,0]) cube([20,3,3]);
        translate([-10,0,0]) rotate([0,90,0]) cube([20,3,3]);
        translate([-20,0,0]) rotate([0,90,0]) cube([20,3,3]);
        translate([-30,0,0]) rotate([0,90,0]) cube([20,3,3]);
        translate([0,0,-0]) rotate([0,180,0]) cube([10,3,3]);
        translate([-10,0,-20]) rotate([0,180,0]) cube([10,3,3]);
        translate([-20,0,-0]) rotate([0,180,0]) cube([10,3,3]);
    }
}    



color("green") sine();
color("blue") saw();
color("red") triangle();
color("white") rect(); 
