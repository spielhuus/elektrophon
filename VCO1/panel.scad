/** VCO-1 **/

ARMATURES=true;

HU=3;
HP=14;

THICKNESS=3;
REFLECTOR_THICKNESS=2;
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
use <../lib/waveform.scad>

module panel_vco(thickness=THICKNESS, screen=SCREEN, font_size=FONT_SIZE,armatures=ARMATURES) {
    difference() {
        group() {
            plate(HP=HP,HU=HU,thickness=thickness);
            translate([0,0,thickness]) {
                translate([0*RASTER_X+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP, 0]) banana_holder();
                translate([0*RASTER_X+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP, 0]) banana_holder();
                translate([0*RASTER_X+RASTER_X_TOP, 2*RASTER_Y+RASTER_Y_TOP, 0]) banana_holder();
                translate([0*RASTER_X+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP, 0]) banana_holder();
                translate([0*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP, 0]) banana_holder();
            }
        }

        translate([5, 23, 0]) rotate([0,0,270]) silkscreen(text="VCO",thickness=thickness, screen=screen, font_size=font_size, font=font);
        translate([5, 0.5*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen(text="CV",thickness=thickness, screen=screen, font_size=font_size, font=font, halign="left");
        translate([5, 1.5*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen(text="EXP",thickness=thickness, screen=screen, font_size=font_size, font=font, halign="left");
        translate([5, 2.5*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen(text="LIN",thickness=thickness, screen=screen, font_size=font_size, font=font, halign="left");
        translate([5, 3.5*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen(text="PWM",thickness=thickness, screen=screen, font_size=font_size, font=font, halign="left");

        translate([0*RASTER_X+RASTER_X_TOP-3, 4.4*RASTER_Y+RASTER_Y_TOP-1, screen+10]) rotate([90,180,0]) pulse(h=5,spacing=3,count=3,thickness=1, w=20);
        translate([1*RASTER_X+RASTER_X_TOP-3, 4.4*RASTER_Y+RASTER_Y_TOP-1, screen+10]) rotate([90,180,0]) triangle(h=5,spacing=3,count=3,thickness=1, w=20);
        translate([2*RASTER_X+RASTER_X_TOP-3, 4.4*RASTER_Y+RASTER_Y_TOP-1, -screen-10]) rotate([90,180,0]) sine(h=5,spacing=3,thickness=1, w=20);

        translate([0*RASTER_X+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP]) banana_hole();
        translate([1*RASTER_Y+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,-45]) potentiometer_hole();
        translate([2*RASTER_Y+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,-45]) potentiometer_hole();
        translate([0*RASTER_X+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP, 0]) banana_hole();
        translate([2*RASTER_Y+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,-45]) potentiometer_hole();
        translate([0*RASTER_X+RASTER_X_TOP, 2*RASTER_Y+RASTER_Y_TOP]) banana_hole();
        translate([2*RASTER_Y+RASTER_X_TOP, 2*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,-45]) potentiometer_hole();

        translate([0*RASTER_X+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP]) banana_hole();
        translate([1*RASTER_Y+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,-45]) potentiometer_hole();
        translate([2*RASTER_Y+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,-45]) potentiometer_hole();

        translate([0*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) banana_hole();
        translate([1*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) banana_hole();
        translate([2*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) banana_hole();
    }

    //first layer
    color("black") translate([0,0,0]) plate_first_layer(HP=HP,HU=HU,layer=screen);

    if(ARMATURES) {

        color("green") pcb(x=3,y=13,height=33, width=64.98,length=107.35);
        translate([5, 23, 0]) rotate([0,0,270]) silkscreen_text (text="VCO",thickness=thickness, screen=screen, font_size=font_size, font=font, color="red");
        translate([5, 0.5*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen_text (text="CV",thickness=thickness, screen=screen, font_size=font_size, font=font, halign="left", color="red");
        translate([5, 1.5*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen_text (text="EXP",thickness=thickness, screen=screen, font_size=font_size, font=font, halign="left", color="red");
        translate([5, 2.5*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen_text (text="LIN",thickness=thickness, screen=screen, font_size=font_size, font=font, halign="left", color="red");
        translate([5, 3.5*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen_text (text="PWM",thickness=thickness, screen=screen, font_size=font_size, font=font, halign="left", color="red");

        color("red") translate([0*RASTER_X+RASTER_X_TOP-3, 4.4*RASTER_Y+RASTER_Y_TOP-1, 0]) rotate([90,180,0]) pulse(h=5,spacing=3,count=3,thickness=1, w=screen);
        color("red") translate([1*RASTER_X+RASTER_X_TOP-3, 4.4*RASTER_Y+RASTER_Y_TOP-1, 0]) rotate([90,180,0]) triangle(h=5,spacing=3,count=3,thickness=1, w=screen);
        color("red") translate([2*RASTER_X+RASTER_X_TOP-3, 4.4*RASTER_Y+RASTER_Y_TOP-1, 0]) rotate([90,180,0]) sine(h=5,spacing=3,thickness=1, w=screen);

        translate([0*RASTER_X+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP]) banana();
        translate([1*RASTER_Y+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,-45]) color("DarkGrey") potentiometer();
        translate([2*RASTER_Y+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,-45]) color("DarkGrey") potentiometer();
        translate([0*RASTER_X+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP, 0]) banana();
        translate([2*RASTER_Y+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,-45]) color("DarkGrey") potentiometer();
        translate([0*RASTER_X+RASTER_X_TOP, 2*RASTER_Y+RASTER_Y_TOP]) banana();
        translate([2*RASTER_Y+RASTER_X_TOP, 2*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,-45]) color("DarkGrey") potentiometer();

        translate([0*RASTER_X+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP]) banana();
        translate([1*RASTER_Y+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,-45]) color("DarkGrey") potentiometer();
        translate([2*RASTER_Y+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,-45]) color("DarkGrey") potentiometer();

        translate([0*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) color("red") banana();
        translate([1*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) color("red") banana();
        translate([2*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) color("red") banana();
    }
}

panel_vco();
