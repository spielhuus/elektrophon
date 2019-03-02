use<../VCO 4069/panel.scad>

module rail() {
    rotate([0,90,0]) {
        difference() {
            translate([13.375,20,0]) 
                import("/home/etienne/Downloads/stange.stl", convexity = 10);
            
            translate([0,0,426.4+10])
            color("green") 
                cube([20,20,1000-426.4-10], center=false);
        }
    }
}

module side() {
    difference() {
        rotate([90,0,90])
            translate([-150,-30,0])
            cube([300,400,20]);
        translate([0,150,20])
            rotate([90,-30,90])
                cube([250,500,20]);
    }
}

module rails() {
    translate([0,0,20]) rail();
    translate([0,0,133.4]) rail();
}

translate([0,-150,20] ) rail();
translate([0,-90,20] ) rail();

translate([0,100,0  ]) rotate([50,00,00]) rails();
translate([0,-10,100  ]) rotate([30,00,00]) rails();
translate([0,-80,230]) rotate([5,00,00])  rails();

side();
translate([426.4,0,0]) side();

rotate([90,0,0])
    translate([25,18,-115]) 
        color("blue")
            rotate([50,0,0]) panel_4069();  