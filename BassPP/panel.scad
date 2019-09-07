/** Bass++ **/

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

module panel_basspp(thickness=THICKNESS, screen=SCREEN, font_size=FONT_SIZE,armatures=ARMATURES) {
    difference() {
        group() {
            plate(HP=HP,HU=HU,thickness=thickness);
            translate([0,0,thickness]) {
                translate([0*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) banana_holder();
                translate([1*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) banana_holder();
                translate([2*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) banana_holder();
            }
        }

        translate([5, 26, 0]) rotate([0,0,270]) silkscreen(text="BASS++",thickness=thickness, screen=screen, font_size=font_size, font=font);
        translate([5, 0.5*RASTER_Y+RASTER_Y_TOP-0, 0]) silkscreen(text="SENS", thickness=thickness, screen=screen, font_size=font_size, font=font, halign="left");
        translate([5, 1.5*RASTER_Y+RASTER_Y_TOP-0, 0]) silkscreen(text="SHELL", thickness=thickness, screen=screen, font_size=font_size, font=font, halign="left");
        translate([5, 2.5*RASTER_Y+RASTER_Y_TOP-0, 0]) silkscreen(text="IMPACT", thickness=thickness, screen=screen, font_size=font_size, font=font, halign="left");
        translate([5, 3.5*RASTER_Y+RASTER_Y_TOP-0, 0]) silkscreen(text="VOL", thickness=thickness, screen=screen, font_size=font_size, font=font, halign="left");
        translate([0*RASTER_X+RASTER_X_TOP, 4.5*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen(text="TRIG", thickness=thickness, screen=screen, font_size=font_size, font=font, halign="center");
        translate([1*RASTER_X+RASTER_X_TOP, 4.5*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen(text="CV", thickness=thickness, screen=screen, font_size=font_size, font=font, halign="center");
        translate([2*RASTER_X+RASTER_X_TOP, 4.5*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen(text="OUT", thickness=thickness, screen=screen, font_size=font_size, font=font, halign="center");

        translate([1*RASTER_Y+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,-45]) color("DarkGrey") potentiometer_hole();
        translate([2*RASTER_Y+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,-45]) color("DarkGrey") potentiometer_hole();

        translate([0*RASTER_Y+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,135]) color("DarkGrey") potentiometer_hole();
        translate([1*RASTER_Y+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,-45]) color("DarkGrey") potentiometer_hole();
        translate([2*RASTER_Y+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,-45]) color("DarkGrey") potentiometer_hole();


        translate([2*RASTER_Y+RASTER_X_TOP, 2*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,-45]) color("DarkGrey") potentiometer_hole();

        translate([1*RASTER_Y+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,-45]) color("DarkGrey") potentiometer_hole();
        translate([2*RASTER_Y+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,-45]) color("DarkGrey") potentiometer_hole();

        translate([0*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) banana_hole();
        translate([1*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) banana_hole();
        translate([2*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) banana_hole();
        translate([1*RASTER_X+RASTER_X_TOP, 3.5*RASTER_Y+RASTER_Y_TOP+1])  translate([0,0,-thickness-1]) cylinder(r=2, h=thickness*2+10, $fn=100);
    }

    //first layer
    color("black") translate([0,0,0]) plate_first_layer(HP=HP,HU=HU,layer=screen);

    if(armatures) {

        color("green") pcb(x=3,y=13,height=33, width=64.98,length=107.35);
        translate([5, 26, 0]) rotate([0,0,270]) silkscreen_text (text="BASS++",thickness=thickness, screen=screen, font_size=font_size, font=font, color="blue");
        translate([5, 0.5*RASTER_Y+RASTER_Y_TOP-0, 0]) silkscreen_text(text="SENS", thickness=thickness, screen=screen, font_size=font_size, font=font, color="blue", halign="left");
        translate([5, 1.5*RASTER_Y+RASTER_Y_TOP-0, 0]) silkscreen_text(text="SHELL", thickness=thickness, screen=screen, font_size=font_size, font=font, color="blue", halign="left");
        translate([5, 2.5*RASTER_Y+RASTER_Y_TOP-0, 0]) silkscreen_text(text="IMPACT", thickness=thickness, screen=screen, font_size=font_size, font=font, color="blue", halign="left");
        translate([5, 3.5*RASTER_Y+RASTER_Y_TOP-0, 0]) silkscreen_text(text="VOL", thickness=thickness, screen=screen, font_size=font_size, font=font, color="blue", halign="left");
        translate([0*RASTER_X+RASTER_X_TOP, 4.5*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen_text(text="TRIG", thickness=thickness, screen=screen, font_size=font_size, font=font, color="blue", halign="center");
        translate([1*RASTER_X+RASTER_X_TOP, 4.5*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen_text(text="CV", thickness=thickness, screen=screen, font_size=font_size, font=font, color="blue", halign="center");
        translate([2*RASTER_X+RASTER_X_TOP, 4.5*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen_text(text="OUT", thickness=thickness, screen=screen, font_size=font_size, font=font, color="blue", halign="center");

        translate([1*RASTER_Y+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,-45]) color("DarkGrey") potentiometer();
        translate([2*RASTER_Y+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,-45]) color("DarkGrey") potentiometer();

        translate([0*RASTER_Y+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,135]) color("DarkGrey") potentiometer();
        translate([1*RASTER_Y+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,-45]) color("DarkGrey") potentiometer();
        translate([2*RASTER_Y+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,-45]) color("DarkGrey") potentiometer();


        translate([2*RASTER_Y+RASTER_X_TOP, 2*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,-45]) color("DarkGrey") potentiometer();

        translate([1*RASTER_Y+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,-45]) color("DarkGrey") potentiometer();
        translate([2*RASTER_Y+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,-45]) color("DarkGrey") potentiometer();

        translate([0*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) color("blue") banana();
        translate([1*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) color("yellow") banana();
        translate([2*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) color("red") banana();
    }
}

//translate([0,0,0]) projection(cut = true) translate([0,0,-4]) panel_basspp(); 
translate([0,0,-4]) panel_basspp(); 
