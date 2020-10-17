HU=3;

HP_SIZE = 5.08;
HU_SIZE = 44.45;

HEIGHT_FRONT=6;
HEIGHT_BACK=70;
LENGTH=110;

RAIL_WIDTH=8.4;
RAIL_HEIGHT=22.5;
RAIL_LENGTH = 84*HP_SIZE;
RAIL_X=9.8;

RAIL_POS_1=[10,30,240-0.5];
RAIL_POS_2=[10,30+67.5,240-116.913];
RAIL_POS_3=[10,30+67.5+116.913,240-116.913-67.5+0.5];

module psu() {
    cube([177.8,123.95,74.93]);
}

module rails() {
    cube([RAIL_LENGTH,RAIL_WIDTH,RAIL_HEIGHT]);
    translate([0,HU*HU_SIZE-RAIL_WIDTH,0]) {
        cube([RAIL_LENGTH,RAIL_WIDTH,RAIL_HEIGHT]);
    }
}

module holes() {
    translate([0,RAIL_WIDTH/2,-RAIL_X]) rotate([0,90,0]) cylinder(h=60,r=1.8,center=true,$fn=100);
    translate([0,HU*HU_SIZE-RAIL_WIDTH/2,-RAIL_X]) rotate([0,90,0]) cylinder(h=60,r=1.8,center=true,$fn=100);
}

module left() {
   difference() {
        cube([10,360,250]);
        translate(RAIL_POS_1) rotate([-60,0,0]) holes();
        translate(RAIL_POS_2) rotate([-30,0,0]) holes();
        translate(RAIL_POS_3) rotate([0,0,0]) holes();
        translate([0,280-5.62,300]) 
            rotate([0,90,0])
            cylinder(h=60,r=230,center=true,$fn=100);
        translate([0,280,70]) 
                cube([10,1000,250]);
    } 
}

module right() {
    translate([431.80,0,0]) {
        difference() { 
            cube([10,360,250]);
            translate([0,280-5.62,300]) 
                rotate([0,90,0])
                cylinder(h=60,r=230,center=true,$fn=100);
            translate([0,280,70]) 
                    cube([10,1000,250]);
        }
    }
}

module draw() {
    translate([-431.80/2,-360/2,-250/2]) {
        left();
        right();
        
        translate(RAIL_POS_1) {
            rotate([-60,0,0]) translate([0,0,-RAIL_HEIGHT]) rails();
            translate([0,0,0]) rotate([-60,0,0]) translate([0,0,0]) color("Green") cube([RAIL_LENGTH,HU*HU_SIZE,1]);
        }
        
        translate(RAIL_POS_2) {
            rotate([-30,0,0]) translate([0,0,-RAIL_HEIGHT]) rails();
            translate([0,0,0]) rotate([-30,0,0]) color("Green") cube([RAIL_LENGTH,HU*HU_SIZE,1]);
        }
        
        translate(RAIL_POS_3) {
            rotate([0,0,0]) translate([0,0,-RAIL_HEIGHT]) rails();
            translate([0,0,0]) rotate([0,0,0]) translate([0,0,0]) color("Green") cube([RAIL_LENGTH,HU*HU_SIZE,1]);
        }
    }
    rotate([180,0,0]) translate([-210,50,40])
        psu();        
}

//projection(cut = true) rotate([0,90,0]) translate([431.80/2,0,0]) draw();
draw();
