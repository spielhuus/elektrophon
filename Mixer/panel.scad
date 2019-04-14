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

X_SHIFT=-6;
TOP_REFLECTOR_Y=26;
TOP_REFLECTOR_X=3;

RASTER_Y_TOP=25;
RASTER_X_TOP=0;
RASTER_X=21;
RASTER_Y=21;

use <../lib/reflector.scad>
use <../lib/plate.scad>
use <../lib/Pomona 1581 Banana Jack.scad>
use <../lib/silk.scad>
use <../lib/Potentiometer_small.scad>
use <../lib/toggle_switch.scad>
use <../lib/stand.scad>

use <../lib/Designer Block.ttf>

module panel_mixer(thickness=THICKNESS, screen=SCREEN, font_size=FONT_SIZE,armatures=ARMATURES) {
    
    difference() {
        group() {
            plate(HP=HP,HU=HU,armatures=armatures,thickness=thickness);
            translate([X_SHIFT,0,thickness]) {
                for( i=[0:3]) {
                    translate([1*RASTER_X+RASTER_X_TOP, i*RASTER_Y+RASTER_Y_TOP, 0]) banana_holder();
                }
                translate([1*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP, 0]) banana_holder(); //OUT
            }
        }

        translate([TOP_REFLECTOR_X+1.5, TOP_REFLECTOR_Y,0]) rotate([0,0,270]) silkscreen(text="MIXER", thickness=thickness, screen=screen, font_size=font_size, font="Designer Block");
        translate([1*RASTER_X-6, 4*RASTER_Y+RASTER_Y/2+RASTER_Y_TOP+2,0]) rotate([0,0,0]) silkscreen(text="OUT", thickness=thickness, screen=screen, font_size=font_size, font="Designer Block");

        //Banana Plugs and Potentiometer
        translate([X_SHIFT,0,0]) {
            for( i=[0:3]) {
                translate([1*RASTER_X+RASTER_X_TOP, i*RASTER_Y+RASTER_Y_TOP, 0]) banana_hole();
                translate([2*RASTER_X+RASTER_X_TOP, i*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,45]) potentiometer_hole(thickness=thickness);
            }
            translate([1*RASTER_X, 4*RASTER_Y+RASTER_Y_TOP, 0]) banana_hole(); //OUT
        }
    }

    //draw the refrectors
    translate([TOP_REFLECTOR_X, TOP_REFLECTOR_Y, 0]) rotate([0,0,0]) reflector(l=15);
    translate([1*RASTER_X-6, 4*RASTER_Y+RASTER_Y/2+RASTER_Y_TOP, 0]) rotate([0,0,90]) reflector(l=10);

    //draw the stand
    stand(x=4, y=15, count_x=17, count_y=37, r=3, h=18, hole=1.15,thickness=thickness);

    if(ARMATURES) {
        translate([TOP_REFLECTOR_X+2, TOP_REFLECTOR_Y,0]) rotate([0,0,270]) silkscreen_text(text="MIXER", thickness=thickness, screen=screen, font_size=font_size, font="Designer Block");
        translate([1*RASTER_X-6, 4*RASTER_Y+RASTER_Y/2+RASTER_Y_TOP+2,0]) rotate([0,0,0]) silkscreen_text(text="OUT", thickness=thickness, screen=screen, font_size=font_size, font="Designer Block");
        //Banana Plugs and Potentiometer
        translate([X_SHIFT,0,0]) {
            for( i=[0:3]) {
                translate([1*RASTER_X+RASTER_X_TOP, i*RASTER_Y+RASTER_Y_TOP, 0]) banana();
                translate([2*RASTER_Y+RASTER_X_TOP, i*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,45]) potentiometer();
            }
            translate([1*RASTER_X, 4*RASTER_Y+RASTER_Y_TOP, 0]) banana(); //OUT
        }
    }
}

panel_mixer();
