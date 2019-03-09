/** Mixer **/

COL_0a=25;
COL_0b=50;
COL_1=15;
COL_2=32;
COL_4=54;
COL_3=71;

ROW_0=40;
ROW_0b=130;
ROW_1=55;
ROW_2=(ROW_1+1*17);
ROW_3=(ROW_1+2*17);
ROW_4=(ROW_1+3*17);

ROW_5=ROW_4+35;
ROW_6=(ROW_5+1*17);
ROW_7=(ROW_5+2*17);
ROW_8=(ROW_5+3*17);


ARMATURES = 1;

HU=5;
HP=17;

CV_SILK_Y=32;
CV_POT_Y=40;
CV_PLUG_Y=40;

LFO_SILK_Y=80;
LFO_POT_Y=100;
LFO_PLUG_Y=160;

OUT_PLUG_Y=170;


THICKNESS=5;

HP_SIZE = 5.07;
HU_SIZE = 44.45;
SCREEN=0.5;

use <../lib/reflector.scad>
use <../lib/plate.scad>
use <../lib/banana_plug.scad>
use <../lib/Potentiometer_small.scad>
use <../lib/toggle_switch.scad>
use <../lib/Potentiometer_WH118.scad>
use <../lib/silk.scad>


module panel_mixer() {
    color("white") difference() {

        group() {
            plate(HP=HP,HU=5 );
            translate([HP*HP_SIZE/2,20+6,0]) reflector(radius=6,length=30,led_holder=2, thickness=1, led=1);
        }

        translate( [HP*HP_SIZE/2, 20+6+2.5, 0]) silkscreen( text="MIXER" );
        translate( [HP*HP_SIZE/2, 20+6+10, 0]) silkscreen( text="#1" );

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

        translate([HP*HP_SIZE/2, 20+6+2.5, 0]) silkscreen_text( text="MIXER" );
        translate([10, 20+20, 0]) silkscreen_text( text="#1" );
        translate([10, HU*HU_SIZE/2+20, 0]) silkscreen_text( text="#3" );
        translate([HP*HP_SIZE-10, 20+20, 0]) silkscreen_text( text="#2" );
        translate([HP*HP_SIZE-10, HU*HU_SIZE/2+20, 0]) silkscreen_text( text="#4" );

        //Mixer1
        color("silver") translate([COL_0a,ROW_0,0]) switch();
        color("green") translate([COL_1,ROW_1,0]) banana_plug();
        color("green") translate([COL_1,ROW_2,0]) banana_plug();
        color("green") translate([COL_1,ROW_3,0]) banana_plug();
        color("red") translate([COL_1,ROW_4,0]) banana_plug();
        color("silver") translate([HP*HP_SIZE/2,ROW_4,0]) switch();

        color("grey") translate([COL_2,ROW_1,10]) rotate([0,180,0]) potentiometer();
        color("grey") translate([COL_2,ROW_2,10]) rotate([0,180,0]) potentiometer();
        color("grey") translate([COL_2,ROW_3,10]) rotate([0,180,0]) potentiometer();

        //Mixer 2
        color("silver") translate([COL_0a,ROW_0b,0]) switch();
        color("green") translate([COL_1,ROW_5,0]) banana_plug();
        color("green") translate([COL_1,ROW_6,0]) banana_plug();
        color("green") translate([COL_1,ROW_7,0]) banana_plug();
        color("red") translate([COL_1,ROW_8,0]) banana_plug();

        color("grey") translate([COL_2,ROW_5,10]) rotate([0,180,0]) potentiometer();
        color("grey") translate([COL_2,ROW_6,10]) rotate([0,180,0]) potentiometer();
        color("grey") translate([COL_2,ROW_7,10]) rotate([0,180,0]) potentiometer();

        //Mixer3
        color("silver") translate([COL_0b,ROW_0,0]) switch();
        color("green") translate([COL_3,ROW_1,0]) banana_plug();
        color("green") translate([COL_3,ROW_2,0]) banana_plug();
        color("green") translate([COL_3,ROW_3,0]) banana_plug();
        color("red") translate([COL_3,ROW_4,0]) banana_plug();

        color("grey") translate([COL_4,ROW_1,10]) rotate([0,180,0]) potentiometer();
        color("grey") translate([COL_4,ROW_2,10]) rotate([0,180,0]) potentiometer();
        color("grey") translate([COL_4,ROW_3,10]) rotate([0,180,0]) potentiometer();

        //Mixer4
        color("silver") translate([COL_0b,ROW_0b,0]) switch();
        color("green") translate([COL_3,ROW_5,0]) banana_plug();
        color("green") translate([COL_3,ROW_6,0]) banana_plug();
        color("green") translate([COL_3,ROW_7,0]) banana_plug();
        color("red") translate([COL_3,ROW_8,0]) banana_plug();
        color("silver") translate([HP*HP_SIZE/2,ROW_8,0]) switch();

        color("grey") translate([COL_4,ROW_5,10]) rotate([0,180,0]) potentiometer();
        color("grey") translate([COL_4,ROW_6,10]) rotate([0,180,0]) potentiometer();
        color("grey") translate([COL_4,ROW_7,10]) rotate([0,180,0]) potentiometer();
    }
}

panel_mixer();