
THICKNESS=3;
REFLECTOR_THICKNESS=2;
SCREEN=0.2;

module led_holder(r=10,h=10,thickness=3,reflector_thickness=2,silksreen=0.2) {
    translate([0,0,h/2+thickness]) {
        difference() {
            cylinder(r=r+thickness/2,h=h, center=true, $fn=100);
            cylinder(r=r,h=h, center=true, $fn=100);
        }    
    }
}    
module led_hole(r=10,h=10,thickness=3,reflector_thickness=2,silksreen=0.2) {
    translate([0,0,h/2+silksreen]) cylinder(r=r,h=h, center=true, $fn=100);
}

module led_silk(r=10,h=10,thickness=3,reflector_thickness=2,silksreen=0.2) {
    color("red") translate([0,0,silksreen/2]) cylinder(r=r,h=silksreen, center=true, $fn=100);
}

color("red") led_holder(r=1.55,h=4,silksreen=SCREEN,thickness=THICKNESS,reflector_thickness=REFLECTOR_THICKNESS);
color("green") led_hole(r=1.55,h=4,silksreen=SCREEN,thickness=THICKNESS,reflector_thickness=REFLECTOR_THICKNESS);
color("yellow") led_silk(r=1.55,h=4,silksreen=SCREEN,thickness=THICKNESS,reflector_thickness=REFLECTOR_THICKNESS);

 
