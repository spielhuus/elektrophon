ARMATURES=true;

HU=3;

HP_SIZE = 5.08;
HU_SIZE = 44.45;

HEIGHT_FRONT=6;
HEIGHT_BACK=70;
LENGTH=110;

module side() {
    difference() {
        hull() {
            translate([0,0,0]) cylinder(h = 10, r = 20, center = true);
            translate([LENGTH,0,0]) cylinder(h = 10, r = 20, center = true);
            translate([0,HEIGHT_FRONT,0]) cylinder(h = 10, r = 20, center = true);
            translate([LENGTH,HEIGHT_BACK,0]) cylinder(h = 10, r = 20, center = true);
        }
        translate([-3,0,4]) {
            translate([0,8,0]) rotate([0,0,30]) screw_holes();
        }
    }
}

module screw_holes() {
    translate([4,3,0]) cylinder(h=30,r=1.8,center=true,$fn=100);
//    translate([4,3,-27]) cylinder(h=40,r=3.5,center=true,$fn=100);
    translate([HU*HU_SIZE-8+4,3,0]) cylinder(h=30,r=1.8,center=true,$fn=100);
//    translate([HU*HU_SIZE-8+4,3,-27]) cylinder(h=40,r=3.5,center=true,$fn=100);

//    translate([4,3,431.80]) cylinder(h=30,r=1.6,center=true,$fn=100);
//    translate([HU*HU_SIZE-8+4,3,431.80]) cylinder(h=30,r=1.6,center=true,$fn=100);
}

module rails() {
    cube([8,13,431.80]);
    translate([HU*HU_SIZE-8,0,0]) cube([8,13,431.80]);
}


module draw() {
    side();
    translate([0,0,431.80]) side();

    translate([-3,0,4]) {
        translate([0,8,0]) rotate([0,0,30]) rails();
    }
}

draw();
//side();