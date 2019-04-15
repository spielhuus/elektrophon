/** Power Supply **/

ARMATURES=false;

HU=3;
HP=8;

THICKNESS=3;
REFLECTOR_THICKNESS=2;
SCREEN=0.1;
FONT_SIZE=3.5;

HP_SIZE = 5.07;
HU_SIZE = 44.45;

X_SHIFT=-6;
TOP_REFLECTOR_Y=26;
TOP_REFLECTOR_X=5;

RASTER_Y_TOP=25;
RASTER_X_TOP=8;
RASTER_X=21;
RASTER_Y=21;

use <../lib/reflector.scad>
use <../lib/plate.scad>
use <../lib/Pomona 1581 Banana Jack.scad>
use <../lib/silk.scad>
use <../lib/stand.scad>

use <../lib/Designer Block.ttf>

module panel_power(thickness=THICKNESS, screen=SCREEN, font_size=FONT_SIZE,armatures=ARMATURES) {
    difference() {
        group() {
            plate(HP=HP,HU=HU,armatures=armatures,thickness=thickness);
            translate([0,0,thickness]) {
                translate([1*RASTER_X+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP, 0]) banana_holder();
                translate([1*RASTER_X+RASTER_X_TOP, 2*RASTER_Y+RASTER_Y_TOP, 0]) banana_holder();
                translate([1*RASTER_X+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP, 0]) banana_holder();
                translate([1*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP, 0]) banana_holder();
            }
        }

        translate([TOP_REFLECTOR_X, TOP_REFLECTOR_Y, 0]) rotate([0,0,270]) silkscreen(text="POWER",thickness=thickness, screen=screen, font_size=font_size, font="Designer Block");
        translate([0*RASTER_X+RASTER_X_TOP+5, 1*RASTER_Y+RASTER_Y_TOP]) silkscreen(text="+5", thickness=thickness, screen=screen, font_size=font_size, font="Designer Block", valign="right");
        translate([0*RASTER_X+RASTER_X_TOP+5, 2*RASTER_Y+RASTER_Y_TOP]) silkscreen(text="+15",thickness=thickness, screen=screen, font_size=font_size, font="Designer Block", valign="right");
        translate([0*RASTER_X+RASTER_X_TOP+5, 3*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen(text="GND",thickness=thickness, screen=screen, font_size=font_size, font="Designer Block", valign="right");
        translate([0*RASTER_X+RASTER_X_TOP+5, 4*RASTER_Y+RASTER_Y_TOP]) silkscreen(text="-15",thickness=thickness, screen=screen, font_size=font_size, font="Designer Block", valign="right");

        translate([1*RASTER_X+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP, 0]) banana_hole();
        translate([1*RASTER_X+RASTER_X_TOP, 2*RASTER_Y+RASTER_Y_TOP, 0]) banana_hole();
        translate([1*RASTER_X+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP, 0]) banana_hole();
        translate([1*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP, 0]) banana_hole();
    }

    translate([TOP_REFLECTOR_X-1.6, TOP_REFLECTOR_Y, thickness]) rotate([0,0,0]) reflector(l=15);
    translate([TOP_REFLECTOR_X+8,1*RASTER_Y+RASTER_Y_TOP-1.6, thickness]) rotate([0,0,90]) reflector(l=10);
    translate([TOP_REFLECTOR_X+8,2*RASTER_Y+RASTER_Y_TOP-1.6, thickness]) rotate([0,0,90]) reflector(l=10);
    translate([TOP_REFLECTOR_X+8,3*RASTER_Y+RASTER_Y_TOP-1.6, thickness]) rotate([0,0,90]) reflector(l=10);
    translate([TOP_REFLECTOR_X+8,4*RASTER_Y+RASTER_Y_TOP-1.6, thickness]) rotate([0,0,90]) reflector(l=10);


    //draw the stand
    stand(x=15, y=30, count_x=0, count_y=27, r=3, h=18, hole=1.25,thickness=thickness);

    if(armatures) {

        translate([TOP_REFLECTOR_X, TOP_REFLECTOR_Y, 0]) rotate([0,0,270]) silkscreen_text (text="POWER",thickness=thickness, screen=screen, font_size=font_size, font="Designer Block");
        translate([0*RASTER_X+RASTER_X_TOP+5, 1*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen_text( text="+5",thickness=thickness, screen=screen, font_size=font_size, font="Designer Block", valign="right");
        translate([0*RASTER_X+RASTER_X_TOP+5, 2*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen_text( text="+15",thickness=thickness, screen=screen, font_size=font_size, font="Designer Block", valign="right");
        translate([0*RASTER_X+RASTER_X_TOP+5, 3*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen_text( text="GND",thickness=thickness, screen=screen, font_size=font_size, font="Designer Block", valign="right");
        translate([0*RASTER_X+RASTER_X_TOP+5, 4*RASTER_Y+RASTER_Y_TOP]) silkscreen_text( text="-15",thickness=thickness, screen=screen, font_size=font_size, font="Designer Block", valign="right");

        translate([1*RASTER_X+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP]) banana();
        translate([1*RASTER_X+RASTER_X_TOP, 2*RASTER_Y+RASTER_Y_TOP, 0]) banana();
        translate([1*RASTER_X+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP]) banana();
        translate([1*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) banana();
    }
}

panel_power(); 
