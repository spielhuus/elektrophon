/** LFO **/

ARMATURES=true;

HU=3;
HP=18;

THICKNESS=3;
REFLECTOR_THICKNESS=2;
SCREEN=0.1;
FONT_SIZE=3.5;

HP_SIZE = 5.07;
HU_SIZE = 44.45;

X_SHIFT=-6;
TOP_REFLECTOR_Y=20;
TOP_REFLECTOR_X=0;

RASTER_Y_TOP=25;
RASTER_X_TOP=9;
RASTER_X=21;
RASTER_Y=21;

font="Source Code Pro:style=Bold";

use <../lib/reflector.scad>
use <../lib/plate.scad>
use <../lib/Pomona 1581 Banana Jack.scad>
use <../lib/silk.scad>
use <../lib/stand.scad>
use <../lib/Potentiometer_small.scad>
use <../lib/Potentiometer WH118v3.scad>
use <../lib/toggle_switch.scad>

use <../lib/Designer Block.ttf>

module panel_vca(thickness=THICKNESS, screen=SCREEN, font_size=FONT_SIZE,armatures=ARMATURES) {
    difference() {
        group() {
            translate([-6,0,0]) plate(HP=HP,HU=HU,armatures=armatures,thickness=thickness);
            translate([0,0,thickness]) {

            translate([0*RASTER_X+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP]) banana_holder();
            translate([1*RASTER_X+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP]) banana_holder();
            translate([0*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) banana_holder(); 
            translate([1*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) banana_holder(); 
            translate([2*RASTER_X+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP]) banana_holder();
            translate([3*RASTER_X+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP]) banana_holder();
            translate([2*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) banana_holder(); 
            translate([3*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) banana_holder(); 
            }
        }

        translate([TOP_REFLECTOR_X, TOP_REFLECTOR_Y, 0]) rotate([0,0,270]) silkscreen(text="LFO",thickness=thickness, screen=screen, font_size=font_size, font=font);
        translate([0*RASTER_X+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen(text="SPEED",thickness=thickness, screen=screen, font_size=font_size, font=font);
        translate([0*RASTER_X+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen(text="SHAPE",thickness=thickness, screen=screen, font_size=font_size, font=font);
        translate([0*RASTER_X+RASTER_X_TOP, 2*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen(text="VARI",thickness=thickness, screen=screen, font_size=font_size, font=font);

        translate([0*RASTER_X+RASTER_X_TOP, 3.6*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen(text="PULSE",thickness=thickness, screen=screen, font_size=font_size, font=font);
        translate([1*RASTER_X+RASTER_X_TOP, 3.6*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen(text="WAVE",thickness=thickness, screen=screen, font_size=font_size, font=font);
        translate([2*RASTER_X+RASTER_X_TOP, 3.6*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen(text="TRI",thickness=thickness, screen=screen, font_size=font_size, font=font);
        translate([3*RASTER_X+RASTER_X_TOP, 3.6*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen(text="VARI",thickness=thickness, screen=screen, font_size=font_size, font=font);

        translate([1*RASTER_X+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP,-1]) rotate([0,180,45]) potentiometer_hole();
        translate([1*RASTER_X+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP,-1]) rotate([0,180,45]) potentiometer_hole();
        translate([1*RASTER_X+RASTER_X_TOP, 2*RASTER_Y+RASTER_Y_TOP,-1]) rotate([0,180,45]) potentiometer_hole();

        translate([0*RASTER_X+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP]) banana_hole();
        translate([1*RASTER_X+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP]) banana_hole();
        translate([0*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) banana_hole(); 
        translate([1*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) banana_hole(); 

        translate([3*RASTER_X+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP,-1]) rotate([0,180,45]) potentiometer_hole();
        translate([3*RASTER_X+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP,-1]) rotate([0,180,45]) potentiometer_hole();
        translate([3*RASTER_X+RASTER_X_TOP, 2*RASTER_Y+RASTER_Y_TOP,-1]) rotate([0,180,45]) potentiometer_hole();

        translate([2*RASTER_X+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP]) banana_hole();
        translate([3*RASTER_X+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP]) banana_hole();
        translate([2*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) banana_hole(); 
        translate([3*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) banana_hole(); 
    }

    translate([TOP_REFLECTOR_X-1.6, TOP_REFLECTOR_Y, thickness]) rotate([0,0,0]) reflector(l=15);
    translate([0*RASTER_X+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP-1.5, thickness]) rotate([0,0,90]) reflector(l=15);
    translate([0*RASTER_X+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP-1.5, thickness]) rotate([0,0,90]) reflector(l=15);
    translate([0*RASTER_X+RASTER_X_TOP, 2*RASTER_Y+RASTER_Y_TOP-1.5, thickness]) rotate([0,0,90]) reflector(l=15);

    translate([0*RASTER_X+RASTER_X_TOP, 3.6*RASTER_Y+RASTER_Y_TOP-1.5, thickness]) rotate([0,0,90]) reflector(l=15);
    translate([1*RASTER_X+RASTER_X_TOP, 3.6*RASTER_Y+RASTER_Y_TOP-1.5, thickness]) rotate([0,0,90]) reflector(l=15);
    translate([2*RASTER_X+RASTER_X_TOP, 3.6*RASTER_Y+RASTER_Y_TOP-1.5, thickness]) rotate([0,0,90]) reflector(l=15);
    translate([3*RASTER_X+RASTER_X_TOP, 3.6*RASTER_Y+RASTER_Y_TOP-1.5, thickness]) rotate([0,0,90]) reflector(l=15);

    //draw the stand
    stand(x=0, y=31, count_x=22, count_y=28 , r=3, h=30, hole=1.25,thickness=thickness,third=false);

    if(armatures) {

//        color("green") perfboard(x=-4,y=10,width=24,length=39);
        translate([TOP_REFLECTOR_X, TOP_REFLECTOR_Y, 0]) rotate([0,0,270]) silkscreen_text (text="LFO",thickness=thickness, screen=screen, font_size=font_size, font=font);
        translate([0*RASTER_X+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen_text (text="SPEED",thickness=thickness, screen=screen, font_size=font_size, font=font);
        translate([0*RASTER_X+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen_text (text="SHAPE",thickness=thickness, screen=screen, font_size=font_size, font=font);
        translate([0*RASTER_X+RASTER_X_TOP, 2*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen_text (text="VARI",thickness=thickness, screen=screen, font_size=font_size, font=font);

        translate([0*RASTER_X+RASTER_X_TOP, 3.6*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen_text (text="PULSE",thickness=thickness, screen=screen, font_size=font_size, font=font);
        translate([1*RASTER_X+RASTER_X_TOP, 3.6*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen_text (text="WAVE",thickness=thickness, screen=screen, font_size=font_size, font=font);
        translate([2*RASTER_X+RASTER_X_TOP, 3.6*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen_text (text="TRI",thickness=thickness, screen=screen, font_size=font_size, font=font);
        translate([3*RASTER_X+RASTER_X_TOP, 3.6*RASTER_Y+RASTER_Y_TOP, 0]) silkscreen_text (text="VARI",thickness=thickness, screen=screen, font_size=font_size, font=font);

        translate([1*RASTER_X+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP,-1]) rotate([0,180,45]) potentiometer();
        translate([1*RASTER_X+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP,-1]) rotate([0,180,45]) potentiometer();
        translate([1*RASTER_X+RASTER_X_TOP, 2*RASTER_Y+RASTER_Y_TOP,-1]) rotate([0,180,45]) potentiometer();

        translate([0*RASTER_X+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP]) banana();
        translate([1*RASTER_X+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP]) banana();
        translate([0*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) banana(); 
        translate([1*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) banana(); 

        translate([3*RASTER_X+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP,-1]) rotate([0,180,45]) potentiometer();
        translate([3*RASTER_X+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP,-1]) rotate([0,180,45]) potentiometer();
        translate([3*RASTER_X+RASTER_X_TOP, 2*RASTER_Y+RASTER_Y_TOP,-1]) rotate([0,180,45]) potentiometer();

        translate([2*RASTER_X+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP]) banana();
        translate([3*RASTER_X+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP]) banana();
        translate([2*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) banana(); 
        translate([3*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) banana(); 



/*        translate([0*RASTER_X+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP]) banana();
        translate([1*RASTER_Y+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP, 0]) switch();
        translate([2*RASTER_Y+RASTER_X_TOP, 0*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,45]) potentiometer();
        translate([0*RASTER_X+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP, 0]) banana();
        translate([1*RASTER_Y+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP, 0]) switch();
        translate([2*RASTER_Y+RASTER_X_TOP, 1*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,45]) potentiometer();
        translate([0*RASTER_X+RASTER_X_TOP, 2*RASTER_Y+RASTER_Y_TOP]) banana();
        translate([1*RASTER_Y+RASTER_X_TOP, 2*RASTER_Y+RASTER_Y_TOP, 0]) switch();
        translate([2*RASTER_Y+RASTER_X_TOP, 2*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,45]) potentiometer();

        translate([0*RASTER_X+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP]) banana();
        translate([1*RASTER_Y+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,45]) potentiometer();
        translate([2*RASTER_Y+RASTER_X_TOP, 3*RASTER_Y+RASTER_Y_TOP, 0]) rotate([0,180,45]) potentiometer();

        translate([0*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) banana();
        translate([2*RASTER_X+RASTER_X_TOP, 4*RASTER_Y+RASTER_Y_TOP]) banana(); */
    }
}

module perfboard(x=0,y=0,width=1,length=1) {
    translate([x,y,30+THICKNESS]) {
        cube([width*2.54, length*2.54, 0.3]);        
    }
}

panel_vca(); 
