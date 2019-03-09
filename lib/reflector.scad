/** 
 * LED Holder for backlickt.
 *
 * command: 
 * 
 * 
 * 
 */

module _led( radius=10,length=20,led_holder=2, thickness=2, led=1 ) {
    cylinder(h = thickness/4, r = led_holder, center = false, $fn=10);
    cylinder(h = thickness+2, r = led, center = false, $fn=10);
    cube(size = [10,200], center = true);
    translate([-radius/2-led_holder/2,-1,0])
        cube(size = [radius/2,1,thickness/4], center = false);
    translate([-radius/2-led_holder/2,0,0])
        cube(size = [radius/2,1,thickness/4], center = false);
}

module reflector( radius=10,length=20,led_holder=2, thickness=2, led=1 ) {

    led_holder_height=radius + 1;

    rotate([0,90,0]) {
        difference() {
            union() {
                cylinder(h = length, r = radius, center = true);
            }

            cylinder(h = length-thickness, r = radius-thickness/2, center = true);
            translate([radius/2,0,0])
            cube(size = [radius,radius*2,length], center = true);
            //            rotate([0,270,0]) {
            //                translate([0, 0, (radius-3)])
            //                    cylinder(h = led_holder_height, r = led, center = false);
            //                }


            //holes for the LED
            rotate([0,0,0]) {
                translate([-(radius-led_holder)+0.5, 0, -length/2]) {
                    _led( radius, length, led_holder, thickness, led );
                }
            }
            rotate([0,0,0]) {
                translate([-(radius-led_holder)+0.5, 0, (length/2)]) {
                    _led( radius, length, led_holder, thickness, led );
                }
            }
        }
    }
}

reflector(length=10, radius=5, led=1.5, led_holder=2, thickness=2);
