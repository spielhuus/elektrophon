/** ADSR **/

ARMATURES=false;

HU=3;
HP=10;

THICKNESS=3;
REFLECTOR_THICKNESS=2;
SCREEN=0.1;
FONT_SIZE=3.0;

HP_SIZE = 5.07;
HU_SIZE = 44.45;

TOP_REFLECTOR_Y=20;
TOP_REFLECTOR_X=0;

RASTER_SHIFT_X=-6;
RASTER_Y_TOP=25;
RASTER_X_TOP=15;
RASTER_X=21;
RASTER_Y=21;

font="Source Code Pro:style=Bold";

use <../lib/pcb_plate.scad>
use <../lib/Pomona 1581 Banana Jack.scad>
use <../lib/silk.scad>
use <../lib/stand.scad>
use <../lib/Potentiometer_small.scad>
use <../lib/toggle_switch.scad>

module panel_adsr(thickness=THICKNESS, screen=SCREEN, font_size=FONT_SIZE,armatures=ARMATURES) {
    difference() {
        group() {
            plate(HP=HP,HU=HU,thickness=thickness);
            translate([0,0,thickness]) {
                translate([0*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) banana_holder();
                translate([1*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) banana_holder();
            }
        }

        translate([0*RASTER_X+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen(text="A", thickness=thickness, screen=screen, font_size=font_size, font=font);
        translate([0*RASTER_X+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen(text="D", thickness=thickness, screen=screen, font_size=font_size, font=font);
        translate([0*RASTER_X+RASTER_X_TOP, 2*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen(text="S", thickness=thickness, screen=screen, font_size=font_size, font=font);
        translate([0*RASTER_X+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen(text="R", thickness=thickness, screen=screen, font_size=font_size, font=font);
        translate([0*RASTER_X+RASTER_X_TOP, 4.5*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen(text="IN", thickness=thickness, screen=screen, font_size=font_size, font=font);
        translate([1*RASTER_X+RASTER_X_TOP, 4.5*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen(text="OUT", thickness=thickness, screen=screen, font_size=font_size, font=font);

        translate([1*RASTER_X+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,-45]) potentiometer_hole(thickness=thickness);
        translate([1*RASTER_X+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,-45]) potentiometer_hole(thickness=thickness);
        translate([1*RASTER_X+RASTER_X_TOP, 2*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,-45]) potentiometer_hole(thickness=thickness);
        translate([1*RASTER_X+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,-45]) potentiometer_hole(thickness=thickness);

        translate([0*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) banana_hole(thickness=thickness);
        translate([1*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) banana_hole(thickness=thickness);
    }

    if(armatures) {

        //color("green") perfboard(x=RASTER_SHIFT_X+2,y=13,height=21, width=18,length=43);
        translate([0*RASTER_X+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen_text(text="A", thickness=thickness, screen=screen, font_size=font_size, font=font, color="yellow");
        translate([0*RASTER_X+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen_text(text="D", thickness=thickness, screen=screen, font_size=font_size, font=font, color="yellow");
        translate([0*RASTER_X+RASTER_X_TOP, 2*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen_text(text="S", thickness=thickness, screen=screen, font_size=font_size, font=font, color="yellow");
        translate([0*RASTER_X+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen_text(text="R", thickness=thickness, screen=screen, font_size=font_size, font=font, color="yellow");
        translate([0*RASTER_X+RASTER_X_TOP, 4.5*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen_text(text="IN", thickness=thickness, screen=screen, font_size=font_size, font=font, color="yellow");
        translate([1*RASTER_X+RASTER_X_TOP, 4.5*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen_text(text="OUT", thickness=thickness, screen=screen, font_size=font_size, font=font, color="yellow");

        translate([1*RASTER_Y+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,-45]) color("DarkGrey") potentiometer();
        translate([1*RASTER_Y+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,-45]) color("DarkGrey") potentiometer();
        translate([1*RASTER_Y+RASTER_X_TOP, 2*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,-45]) color("DarkGrey") potentiometer();
        translate([1*RASTER_Y+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,-45]) color("DarkGrey") potentiometer();

        translate([0*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) color("yellow") banana();
        translate([1*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) color("blue") banana();

//        rotate([270,0,0]) translate([0,-8,0]) color("green") import( "export/ADSR.stl", convexity = 10 );
    }
}

translate([0,0,0]) projection(cut = true) translate([0,0,-4]) panel_adsr(); 
