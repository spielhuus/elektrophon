/** VCO X-4096 **/

ARMATURES = 1;

HP=12;

CV_SILK_Y=32;
CV_POT_Y=50;
CV_PLUG_Y=42;

LFO_SILK_Y=80;
LFO_POT_Y=100;
LFO_PLUG_Y=160;

OUT_PLUG_Y=170;


THICKNESS=5;

HP_SIZE = 5.07;
HU_SIZE = 44.45;
SCREEN=0.5;

//HEIGHT = 133.4;

use <../lib/reflector.scad>
//use <../lib/led.scad>
use <../lib/plate.scad>
use <../lib/banana_plug.scad>
use <../lib/Potentiometer_WH118.scad>
use <../lib/silk.scad>

module triangle() {
    rotate([0,0,90]) {
        translate([0,0,0])
        rotate([0,90,45])
        cube([1,1,5], $fn=20);
        
        rotate([0,90,320])
        cube([1,1,5], $fn=20);
    }
}

//translate([-10,0,10])  led();

module panel_4069() {
    color("white") difference() {

        plate(HP=HP,HU=5 );
        translate( [HP*HP_SIZE/2, 25, 0]) silkscreen( text="VCO4069" );
        translate( [HP*HP_SIZE/4, CV_SILK_Y, 0]) silkscreen( text="CV" );
        translate( [HP*HP_SIZE/4, LFO_SILK_Y, 0]) silkscreen( text="LFO" );
        translate( [HP*HP_SIZE/4, 150, 0]) silkscreen( text="PULSE" );
        translate([HP*HP/4*3,116,2]) triangle();

        //draw the banana plugs        
        translate([HP*HP_SIZE/4,CV_PLUG_Y,0]) banana_plug_hole();
        translate([HP*HP_SIZE/4*3,CV_PLUG_Y,0]) banana_plug_hole();

        translate([HP*HP_SIZE/2,165,0]) banana_plug_hole();
        translate([HP*HP_SIZE/4,190,0]) banana_plug_hole();
        translate([HP*HP_SIZE/4*3,190,0]) banana_plug_hole();
    }

    if( ARMATURES ) {
        /* VCO */

        //Control Voltage in
        color("grey") translate([HP*HP_SIZE/3*2,CV_POT_Y,0]) WH118();
        color("green") translate([HP*HP_SIZE/4,CV_PLUG_Y,0]) banana_plug();
        color("green") translate([HP*HP_SIZE/4,CV_PLUG_Y+16,0]) banana_plug();

        //LFO
        color("grey") translate([HP*HP_SIZE/4*2,LFO_POT_Y,0]) WH118();
        color("grey") translate([HP*HP_SIZE/4*2,LFO_POT_Y+30,0]) WH118();

        //OUT
        color("green") {
            translate([HP*HP_SIZE/2,OUT_PLUG_Y,0]) banana_plug();
            translate([HP*HP_SIZE/4,OUT_PLUG_Y,0]) banana_plug();
            translate([HP*HP_SIZE/4*3,OUT_PLUG_Y,0]) banana_plug();
        }

        translate( [HP*HP_SIZE/2, 25, 0]) silkscreen_text( text="VCO4069" );
        translate( [HP*HP_SIZE/4, CV_SILK_Y, 0]) silkscreen_text( text="CV" );
        translate( [HP*HP_SIZE/4, LFO_SILK_Y, 0]) silkscreen_text( text="LFO" );
        translate( [HP*HP_SIZE/4, 150, 0]) silkscreen_text( text="PU" );

        //translate() 
        rotate([0,270,0]) cube([75,100,2]);
    }
}

panel_4069();