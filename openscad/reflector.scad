module reflector( radius=10,length=20,led_holder=2, thickness=2, led=1 ) {

echo("This is a reflector radius h=", radius, " and l=", length);
    
$fn=100;
led_holder_height=radius + 1;
    
rotate([0,90,0]) {
    difference() {
        union() {
            rotate([0,270,0]) {
                translate([0, 0, (radius-led_holder_height)])
                    cylinder(h = led_holder_height, r = led_holder, center = false, $fn=20);
            }
            cylinder(h = length, r = radius, center = true);
    }
    
    cylinder(h = length-thickness, r = radius-thickness/2, center = true);
    translate([radius/2,0,0])
        cube(size = [radius,radius*2,length], center = true);
            rotate([0,270,0]) {
                translate([0, 0, (radius-3)])
                    cylinder(h = led_holder_height, r = led, center = false);
                }
        }
    }
}

reflector(radius=5, led=2.2, led_holder=3);

