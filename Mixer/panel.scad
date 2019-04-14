/** Mixer **/

ARMATURES=false;

HU=3;
HP=10;

THICKNESS=3;
REFLECTOR_THICKNESS=2;
SCREEN=0.1;
FONT_SIZE=3.5;

HP_SIZE = 5.07;
HU_SIZE = 44.45;

TOP_REFLECTOR_Y=26;
TOP_REFLECTOR_X=3;

RASTER_Y_TOP=28.675;
RASTER_X=20;
RASTER_Y=20;

use <../lib/reflector.scad>
use <../lib/plate.scad>
use <../lib/Pomona 1581 Banana Jack.scad>
use <../lib/silk.scad>
use <../lib/Potentiometer_small.scad>
use <../lib/toggle_switch.scad>

use <../lib/Designer Block.ttf>

module stand() {
    translate([HP*HP_SIZE/2, 15, 0]) {
        difference() {
            group() {
                cylinder(r=3, h=30, $fn=50);
                translate([0,92,0]) cylinder(r=3, h=30, $fn=50);
            }
        translate([0,0,1]) cylinder(r=1, h=30, $fn=50);
        translate([0,92,1]) cylinder(r=1, h=30, $fn=50);
        }
    } 
}


module panel_mixer(thickness=THICKNESS, screen=SCREEN, font_size=FONT_SIZE,armatures=ARMATURES) {
    
    difference() {
        group() {
            translate([-1,0,0]) plate(HP=HP,HU=HU,armatures=armatures,thickness=thickness);
            translate([-5,0,+thickness]) {
                for( i=[0:3]) {
                    translate([1*RASTER_X, i*RASTER_Y+RASTER_Y_TOP, 0]) banana_holder();
                }
                translate([1*RASTER_X, 4*RASTER_Y+RASTER_Y_TOP, 0]) banana_holder(); //OUT
            }
        }

        translate([TOP_REFLECTOR_X+2, TOP_REFLECTOR_Y,0]) rotate([0,0,270]) silkscreen(text="MIXER", thickness=thickness, screen=screen, font_size=font_size, font="Designer Block");
        translate([1*RASTER_X-5, 4*RASTER_Y+RASTER_Y/2+RASTER_Y_TOP+2,0]) rotate([0,0,0]) silkscreen(text="OUT", thickness=thickness, screen=screen, font_size=font_size, font="Designer Block");

        //Banana Plugs and Potentiometer
        translate([-5,0,0]) {
            for( i=[0:3]) {
                translate([1*RASTER_X, i*RASTER_Y+RASTER_Y_TOP, 0]) banana_hole();
                translate([2*RASTER_X, i*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,45]) potentiometer_hole(thickness=thickness);
            }
            translate([1*RASTER_X, 4*RASTER_Y+RASTER_Y_TOP, 0]) banana_hole(); //OUT
        }
    }

    //draw the refrectors
    translate([TOP_REFLECTOR_X, TOP_REFLECTOR_Y, 0]) rotate([0,0,0]) reflector(l=15);
    translate([1*RASTER_X-5, 4*RASTER_Y+RASTER_Y/2+RASTER_Y_TOP, 0]) rotate([0,0,90]) reflector(l=10);

    //draw the stand
    translate([-HP*HP_SIZE/2+3,0,0]) stand();
    translate([-HP*HP_SIZE/2+3+41,0,0]) stand();

    if(ARMATURES) {
        translate([TOP_REFLECTOR_X+2, TOP_REFLECTOR_Y,0]) rotate([0,0,270]) silkscreen_text(text="MIXER", thickness=thickness, screen=screen, font_size=font_size, font="Designer Block");
        translate([1*RASTER_X-5, 4*RASTER_Y+RASTER_Y/2+RASTER_Y_TOP+2,0]) rotate([0,0,0]) silkscreen_text(text="OUT", thickness=thickness, screen=screen, font_size=font_size, font="Designer Block");
        //Banana Plugs and Potentiometer
        translate([-5,0,0]) {
            for( i=[0:3]) {
                translate([1*RASTER_X, i*RASTER_Y+RASTER_Y_TOP, 0]) banana();
                translate([2*RASTER_Y, i*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,45]) potentiometer();
            }
            translate([1*RASTER_X, 4*RASTER_Y+RASTER_Y_TOP, 0]) banana(); //OUT
        }
    }
}

panel_mixer();
