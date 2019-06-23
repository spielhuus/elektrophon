/** Mixer **/

ARMATURES=true;

HU=3;
HP=14;

THICKNESS=3;
SCREEN=0.1;
FONT_SIZE=3.0;

HP_SIZE = 5.07;
HU_SIZE = 44.45;

RASTER_Y_TOP=25;
RASTER_X_TOP=15;
RASTER_X=21;
RASTER_Y=21;

font="Source Code Pro:style=Bold";

use <../lib/pcb_plate.scad>
use <../lib/Pomona 1581 Banana Jack.scad>
use <../lib/silk.scad>
use <../lib/Potentiometer_small.scad>
use <../lib/toggle_switch.scad>

module panel_mixer(thickness=THICKNESS, screen=SCREEN, font_size=FONT_SIZE,armatures=ARMATURES) {
    
    difference() {
        group() {
            plate(HP=HP,HU=HU,thickness=thickness);
            translate([0,0,thickness]) {
                translate([0*RASTER_X+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP]) banana_holder();
                translate([0*RASTER_X+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP]) banana_holder();
                translate([0*RASTER_X+RASTER_X_TOP, 2*RASTER_Y+RASTER_Y_TOP]) banana_holder();
                translate([0*RASTER_X+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP]) banana_holder();
                translate([2*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) banana_holder(); //OUT
            }
        }

        translate([5, 26, 0]) rotate([0,0,270]) silkscreen(text="MIXER",thickness=thickness, screen=screen, font_size=font_size, font=font);
        translate([2*RASTER_X+RASTER_X_TOP, 4.5*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen(text="OUT", thickness=thickness, screen=screen, font_size=font_size, font=font, halign="center");

        //Banana Plugs and Potentiometer
        translate([0*RASTER_X+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP]) banana_hole();
        translate([0*RASTER_X+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP]) banana_hole();
        translate([0*RASTER_X+RASTER_X_TOP, 2*RASTER_Y+RASTER_Y_TOP]) banana_hole();
        translate([0*RASTER_X+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP]) banana_hole();
        translate([2*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) banana_hole(); //OUT

        translate([1*RASTER_Y+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP, -1]) switch_hole();
        translate([1*RASTER_Y+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP, -1]) switch_hole();
        translate([1*RASTER_Y+RASTER_X_TOP, 2*RASTER_Y+RASTER_Y_TOP, -1]) switch_hole();
        translate([1*RASTER_Y+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP, -1]) switch_hole();

        translate([2*RASTER_X+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,45]) potentiometer_hole();
        translate([2*RASTER_X+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,45]) potentiometer_hole();
        translate([2*RASTER_X+RASTER_X_TOP, 2*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,45]) potentiometer_hole();
        translate([2*RASTER_X+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,45]) potentiometer_hole();

        translate([1*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP+1])  translate([0,0,-thickness-1]) cylinder(r=2, h=thickness*2+10, $fn=100);
    }

    //first layer
    color("black") translate([0,0,0]) plate_first_layer(HP=HP,HU=HU,layer=screen);

    if(ARMATURES) {
        color("green") pcb(x=3,y=13,height=33, width=64.98,length=107.35);

        translate([5, 26, 0]) rotate([0,0,270]) silkscreen_text (text="MIXER",thickness=thickness, screen=screen, font_size=font_size, font=font, color="yellow");
        translate([2*RASTER_X+RASTER_X_TOP, 4.5*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen_text(text="OUT", thickness=thickness, screen=screen, font_size=font_size, font=font, color="yellow", halign="center");

        translate([0*RASTER_Y+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP, 0]) color("Green") banana();
        translate([0*RASTER_Y+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP, 0]) color("Green") banana();
        translate([0*RASTER_Y+RASTER_X_TOP, 2*RASTER_Y+RASTER_Y_TOP, 0]) color("Green") banana();
        translate([0*RASTER_Y+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP, 0]) color("Green") banana();
        translate([2*RASTER_Y+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP, 0]) color("Red") banana();

        translate([1*RASTER_Y+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP, 2]) switch();
        translate([1*RASTER_Y+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP, 2]) switch();
        translate([1*RASTER_Y+RASTER_X_TOP, 2*RASTER_Y+RASTER_Y_TOP, 2]) switch();
        translate([1*RASTER_Y+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP, 2]) switch();

        translate([2*RASTER_Y+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,-45]) color("DarkGrey") potentiometer();
        translate([2*RASTER_Y+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,-45]) color("DarkGrey") potentiometer();
        translate([2*RASTER_Y+RASTER_X_TOP, 2*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,-45]) color("DarkGrey") potentiometer();
        translate([2*RASTER_Y+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,-45]) color("DarkGrey") potentiometer();
    }
}

panel_mixer();
