/** Mixer **/

ARMATURES=false;

HU=3;
HP=16;

THICKNESS=5;
REFLECTOR_THICKNESS=2;
SCREEN=0.1;
FONT_SIZE=3.5;

HP_SIZE = 5.07;
HU_SIZE = 44.45;

TOP_REFLECTOR_Y=30;
TOP_REFLECTOR_X=10;

RASTER_Y_TOP=28.675;
RASTER_X=19;
RASTER_Y=19;

use <../lib/reflector.scad>
use <../lib/plate.scad>
use <../lib/Pomona 1581 Banana Jack.scad>
use <../lib/silk.scad>
use <../lib/Potentiometer_small.scad>
use <../lib/toggle_switch.scad>

use <../lib/Designer Block.ttf>

module panel_mixer(thickness=THICKNESS, screen=SCREEN, font_size=FONT_SIZE,armatures=ARMATURES) {
    difference() {
        translate([-3,0,0]) plate(HP=HP,HU=HU,armatures=armatures,thickness=thickness);

        translate([TOP_REFLECTOR_X, TOP_REFLECTOR_Y,0]) rotate([0,0,270]) silkscreen(text="MIXER", thickness=thickness, screen=screen, font_size=font_size, font="Designer Block");
        translate([1*RASTER_X, 0*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen(text="#1", thickness=thickness, screen=screen, font_size=font_size, font="Designer Block");
        translate([3*RASTER_X, 0*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen(text="#2", thickness=thickness, screen=screen, font_size=font_size, font="Designer Block");

        //Banana Plugs and Potentiometer
        translate([-10,0,0]) {
            for( i=[1:3]) {
                translate([1*RASTER_X, i*RASTER_Y+RASTER_Y_TOP, 0]) banana_hole();
                translate([2*RASTER_Y, i*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,0]) potentiometer_hole(thickness=thickness);
                translate([3*RASTER_Y, i*RASTER_Y+RASTER_Y_TOP]) rotate([0,180,0]) potentiometer_hole(thickness=thickness);
                translate([4*RASTER_Y, i*RASTER_Y+RASTER_Y_TOP, 0]) banana_hole();

            }
            translate([1*RASTER_X, 4*RASTER_Y+RASTER_Y_TOP, 0]) banana_hole(); //OUT
            translate([4*RASTER_X, 4*RASTER_Y+RASTER_Y_TOP, 0]) banana_hole(); //OUT
            translate([2*RASTER_X, 4*RASTER_Y+RASTER_Y_TOP, 0]) switch_hole(thickness=thickness); //SWITCH COMB
            translate([3*RASTER_X, 4*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen(text="-->", thickness=thickness, screen=screen, font_size=font_size, font="Designer Block");
        }
    }

    //draw the refrectors
    translate([TOP_REFLECTOR_X-1.6, TOP_REFLECTOR_Y, 0]) rotate([0,0,0]) reflector(l=15);
    translate([1*RASTER_X, 0*RASTER_Y+RASTER_Y_TOP-1.6,0]) rotate([0,0,90]) reflector(l=10);
    translate([3*RASTER_X, 0*RASTER_Y+RASTER_Y_TOP-1.6,0]) rotate([0,0,90]) reflector(l=10);


    if(ARMATURES) {
        translate([5, 25]) rotate([0,0,270]) silkscreen_text(text="MIXER", thickness=thickness, screen=screen, font_size=font_size, font="Designer Block");
        translate([1*RASTER_X, 0*RASTER_Y+RASTER_Y_TOP,0]) silkscreen_text(text="#1", thickness=thickness, screen=screen, font_size=font_size, font="Designer Block");
        translate([3*RASTER_X, 0*RASTER_Y+RASTER_Y_TOP,0]) silkscreen_text(text="#2", thickness=thickness, screen=screen, font_size=font_size, font="Designer Block");

        //Banana Plugs and Potentiometer
        translate([-10,0,0]) {
            for( i=[1:3]) {
                translate([1*RASTER_X, i*RASTER_Y+RASTER_Y_TOP, 0]) banana();
                translate([2*RASTER_Y, i*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,0]) potentiometer();
                translate([3*RASTER_Y, i*RASTER_Y+RASTER_Y_TOP]) rotate([0,180,0]) potentiometer();
                translate([4*RASTER_Y, i*RASTER_Y+RASTER_Y_TOP, 0]) banana();

            }
            translate([1*RASTER_X, 4*RASTER_Y+RASTER_Y_TOP, 0]) banana(); //OUT
            translate([4*RASTER_X, 4*RASTER_Y+RASTER_Y_TOP, 0]) banana(); //OUT
            translate([2*RASTER_X, 4*RASTER_Y+RASTER_Y_TOP, 0]) switch(); //SWITCH COMB
            translate([3*RASTER_X, 4*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen_text(text="-->", thickness=thickness, screen=screen, font_size=font_size, font="Designer Block");
        }
    }
}

panel_mixer();