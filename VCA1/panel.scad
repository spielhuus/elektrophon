/** Power Supply **/

ARMATURES=true;

HU=3;
HP=14;

THICKNESS=3;
REFLECTOR_THICKNESS=2;
SCREEN=0.1;
FONT_SIZE=3.5;

HP_SIZE = 5.07;
HU_SIZE = 44.45;

X_SHIFT=-6;
TOP_REFLECTOR_Y=20;
TOP_REFLECTOR_X=0;

RASTER_Y_TOP=25;
RASTER_X_TOP=8;
RASTER_X=21;
RASTER_Y=21;

use <../lib/reflector.scad>
use <../lib/plate.scad>
use <../lib/Pomona 1581 Banana Jack.scad>
use <../lib/silk.scad>
use <../lib/stand.scad>
use <../lib/Potentiometer_small.scad>
use <../lib/toggle_switch.scad>

use <../lib/Designer Block.ttf>

module panel_power(thickness=THICKNESS, screen=SCREEN, font_size=FONT_SIZE,armatures=ARMATURES) {
    difference() {
        group() {
            translate([-5,0,0]) plate(HP=HP,HU=HU,armatures=armatures,thickness=thickness);
            translate([0,0,thickness]) {
                translate([0*RASTER_X+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP, 0]) banana_holder();
                translate([0*RASTER_X+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP, 0]) banana_holder();
                translate([0*RASTER_X+RASTER_X_TOP, 2*RASTER_Y+RASTER_Y_TOP, 0]) banana_holder();
                translate([0*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) banana_holder();
                translate([2*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) banana_holder();
            }
        }

        translate([TOP_REFLECTOR_X, TOP_REFLECTOR_Y, 0]) rotate([0,0,270]) silkscreen(text="VCA1",thickness=thickness, screen=screen, font_size=font_size, font="Designer Block");

        translate([0*RASTER_X+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP, 0]) banana_hole();
        translate([1*RASTER_X+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP, 0]) switch_hole(thickness=thickness);
        translate([2*RASTER_X+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,45]) potentiometer_hole(thickness=thickness);
        translate([0*RASTER_X+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP, 0]) banana_hole();
        translate([1*RASTER_X+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP, 0]) switch_hole(thickness=thickness);
        translate([2*RASTER_X+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,45]) potentiometer_hole(thickness=thickness);
        translate([0*RASTER_X+RASTER_X_TOP, 2*RASTER_Y+RASTER_Y_TOP, 0]) banana_hole();
        translate([1*RASTER_X+RASTER_X_TOP, 2*RASTER_Y+RASTER_Y_TOP, 0]) switch_hole(thickness=thickness);
        translate([2*RASTER_X+RASTER_X_TOP, 2*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,45]) potentiometer_hole(thickness=thickness);

        translate([0*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) banana_hole();
        translate([2*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) banana_hole();
    }

    translate([TOP_REFLECTOR_X-1.6, TOP_REFLECTOR_Y, thickness]) rotate([0,0,0]) reflector(l=15);


    //draw the stand
    stand(x=0, y=30, count_x=22, count_y=42, r=3, h=18, hole=1.25,thickness=thickness);

    if(armatures) {

        translate([TOP_REFLECTOR_X, TOP_REFLECTOR_Y, 0]) rotate([0,0,270]) silkscreen_text (text="VCA1",thickness=thickness, screen=screen, font_size=font_size, font="Designer Block");

        translate([0*RASTER_X+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP]) banana();
        translate([1*RASTER_Y+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP, 0]) switch();
        translate([2*RASTER_Y+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,45]) potentiometer();
        translate([0*RASTER_X+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP, 0]) banana();
        translate([1*RASTER_Y+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP, 0]) switch();
        translate([2*RASTER_Y+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,45]) potentiometer();
        translate([0*RASTER_X+RASTER_X_TOP, 2*RASTER_Y+RASTER_Y_TOP]) banana();
        translate([1*RASTER_Y+RASTER_X_TOP, 2*RASTER_Y+RASTER_Y_TOP, 0]) switch();
        translate([2*RASTER_Y+RASTER_X_TOP, 2*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,45]) potentiometer();
        translate([0*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) banana();
        translate([2*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) banana();
    }
}

panel_power(); 
