/** Stereo Mixer **/

ARMATURES=true;

HU=3;
HP=22;

THICKNESS=5;
REFLECTOR_THICKNESS=2;
SCREEN=0.1;
FONT_SIZE=3.5;

HP_SIZE = 5.07;
HU_SIZE = 44.45;

TOP_REFLECTOR_Y=30;
TOP_REFLECTOR_X=10;

RASTER_Y_TOP=28;
RASTER_X=20;
RASTER_Y=20;

use <../lib/reflector.scad>
use <../lib/plate.scad>
use <../lib/Pomona 1581 Banana Jack.scad>
use <../lib/silk.scad>
use <../lib/Potentiometer_small.scad>
use <../lib/Potentiometer WH118v3.scad>
use <../lib/toggle_switch.scad>

use <../lib/Designer Block.ttf>

module panel_stereo_mixer(thickness=THICKNESS, screen=SCREEN, font_size=FONT_SIZE,armatures=ARMATURES) {
    difference() {


        group() {
        plate(HP=HP,HU=HU,armatures=armatures,thickness=thickness);
//            translate([HP*HP_SIZE/2,20+6,0]) reflector(radius=6,length=30,led_holder=2, thickness=1, led=1); //reflector
        }

        translate( [HP*HP_SIZE/2, 20+6+2.5, 0]) silkscreen(text="MIXER", thickness=thickness, screen=screen, font_size=font_size, font="Designer Block");
        translate( [HP*HP_SIZE/2, 20+6+10, 0]) silkscreen(text="#1", thickness=thickness, screen=screen, font_size=font_size, font="Designer Block");

        //draw the banana plugs        
/*        translate([HP*HP_SIZE/4,CV_PLUG_Y,0]) banana_plug_hole();
        translate([HP*HP_SIZE/4*3,CV_PLUG_Y,0]) banana_plug_hole();

        translate([HP*HP_SIZE/2,165,0]) banana_plug_hole();
        translate([HP*HP_SIZE/4,190,0]) banana_plug_hole();
        translate([HP*HP_SIZE/4*3,190,0]) banana_plug_hole();
        */
    }

    if( ARMATURES ) {
        
        rotate([0,90,0]) translate([-10,10,HP*HP_SIZE/2]) cube(size = [20,20,HP*HP_SIZE], center = true);
        rotate([0,90,0]) translate([-10,HU*HU_SIZE-10,HP*HP_SIZE/2]) cube(size = [20,20,HP*HP_SIZE], center = true);

        translate( [5, 25]) rotate([0,0,270]) silkscreen_text(text="MIXER", thickness=thickness, screen=screen, font_size=font_size, font="Designer Block");

        //Banana Plugs and Potentiometer
        translate([-5,0,0]) {
            for( i=[0:2]) {
                for(j=[1:3]) {
                    translate([j*RASTER_Y, i*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,0]) potentiometer();
                }
            }
            for( i=[3:4]) {
                for(j=[1:3]) {
                    translate([j*RASTER_Y, i*RASTER_Y+RASTER_Y_TOP, 0]) banana();
                }
            }


            //master volume 
            translate([5*RASTER_Y, 0*RASTER_Y+RASTER_Y_TOP, +10]) rotate([0,180,0]) WH118();
            //bass, trebble, headphone pot
            for( i=[1:2]) {
                for(j=[5:5]) {
                    translate([j*RASTER_Y, i*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,0]) potentiometer();
                }
            }
            translate([5*RASTER_Y, 4*RASTER_Y+RASTER_Y_TOP, 0]) banana();
            translate( [3*RASTER_X, 4*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen_text(text="-->", thickness=thickness, screen=screen, font_size=font_size, font="Designer Block");
        }
    }
}

panel_stereo_mixer();