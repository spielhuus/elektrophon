/** 
 * LED Holder for backlight.
 */

module _led( radius=10,length=20,led=2, thickness=2, led=1 ) {
    cylinder(h = thickness/2, r = led, center = false, $fn=10);
    cylinder(h = thickness*4, r = led, center = false, $fn=10);
}

module _reflector(l=20,thickness=2,h=15,r1=10,r2=2) {
    translate([0,0,-thickness]) hull() {
        translate([l/2,0,-thickness]) hull() {
            minkowski($fn=50) {
                cylinder(h=h, r1=r1, r2=r2, center=true);
                translate([0,0,r1]) sphere(r=r1/2);
            }
        }
        translate([-l/2,0,-thickness]) hull() {
            minkowski($fn=50) {
                cylinder(h=h, r1=r1, r2=r2, center=true);
                translate([0,0,r1]) sphere(r=r1/2);
            }
        }
    }
}

module reflector( h=15,r1=10,r2=2,l=50,thickness=2,led=1.5,span=10) {

    difference() {
        _reflector(l=l,h=h,r1=r1,r2=r2,h=h,thickness=0);
        _reflector(l=l,h=h,r1=r1,r2=r2,h=h,thickness=thickness);

        if(l>=(2*span)) {
            _diff=floor((l)/span);
            _start = (l/2)+((l)-((_diff)*span));
            echo("diff:", _diff, ", start:", _start );
            translate([-_start,0,h])
                for(i=[0 : _diff ] ) 
                    translate([i*span,0,0]) _led( r1, l, led, thickness, led );
        } else {
            translate([0,0,h]) _led( r1, l, led, thickness, led );
        }
    }
}

reflector(h=15,l=10,r1=10,r2=2,thickness=2,led=1.5,span=20);
