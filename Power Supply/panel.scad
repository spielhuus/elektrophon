/** Power Supply **/

ARMATURES=true;

HU=5;
HP=8;

THICKNESS=5;
REFLECTOR_THICKNESS=2;
SCREEN=0.3;
FONT_SIZE=3.5;

HP_SIZE = 5.07;
HU_SIZE = 44.45;

use <../lib/reflector.scad>
use <../lib/plate.scad>
use <../lib/banana_plug.scad>
use <../lib/silk.scad>


module panel_power(armatures=false) {
    difference() {
        group() {
            plate(HP=HP,HU=5,armatures=ARMATURES,thickness=THICKNESS);
        }
        translate( [HP*HP_SIZE/2, 20+6+2.5, 0]) silkscreen( text="POWER",thickness=THICKNESS );
        translate( [HP*HP_SIZE/3-2, HU*HU_SIZE-90+2, 0]) silkscreen(text="+5V",thickness=THICKNESS);
        translate( [HP*HP_SIZE/3-2, HU*HU_SIZE-70+2, 0]) silkscreen(text="+15V",thickness=THICKNESS);
        translate( [HP*HP_SIZE/3-2, HU*HU_SIZE-50+2, 0]) silkscreen(text="GND",thickness=THICKNESS);
        translate( [HP*HP_SIZE/3-2, HU*HU_SIZE-30+2, 0]) silkscreen(text="-15V",thickness=THICKNESS);

        translate([HP*HP_SIZE/3*2+2, HU*HU_SIZE-90, 0]) banana_plug_hole();
        translate([HP*HP_SIZE/3*2+2, HU*HU_SIZE-70, 0]) banana_plug_hole();
        translate([HP*HP_SIZE/3*2+2, HU*HU_SIZE-50, 0]) banana_plug_hole();
        translate([HP*HP_SIZE/3*2+2, HU*HU_SIZE-30, 0]) banana_plug_hole();
    }

    if( armatures ) {

        translate( [HP*HP_SIZE/2, 20+6+2.5, 0]) silkscreen_text ( text="POWER",thickness=THICKNESS );
        translate( [HP*HP_SIZE/3-2, HU*HU_SIZE-90+2, 0]) silkscreen_text( text="+5V",font_size=FONT_SIZE,thickness=THICKNESS);
        translate( [HP*HP_SIZE/3-2, HU*HU_SIZE-70+2, 0]) silkscreen_text( text="+15V",font_size=FONT_SIZE,thickness=THICKNESS);
        translate( [HP*HP_SIZE/3-2, HU*HU_SIZE-50+2, 0]) silkscreen_text( text="GND",font_size=FONT_SIZE,thickness=THICKNESS);
        translate( [HP*HP_SIZE/3-2, HU*HU_SIZE-30+2, 0]) silkscreen_text( text="-15V",font_size=FONT_SIZE,thickness=THICKNESS);

        translate([HP*HP_SIZE/3*2+2, HU*HU_SIZE-90, 0]) banana_plug();
        translate([HP*HP_SIZE/3*2+2, HU*HU_SIZE-70, 0]) banana_plug();
        translate([HP*HP_SIZE/3*2+2, HU*HU_SIZE-50, 0]) banana_plug();
        translate([HP*HP_SIZE/3*2+2, HU*HU_SIZE-30, 0]) banana_plug();
    }

    translate([HP*HP_SIZE/2,20+6,THICKNESS-1]) reflector(r1=4,r2=2,l=20,thickness=2,led=1.5,h=5,span=10);
    translate([HP*HP_SIZE/3-2,HU*HU_SIZE-90,THICKNESS-1]) reflector(h=5,l=5,r1=5,r2=2,thickness=REFLECTOR_THICKNESS,led=1.5,span=14);
    translate([HP*HP_SIZE/3-2,HU*HU_SIZE-70,THICKNESS-1]) reflector(h=5,l=5,r1=5,r2=2,thickness=REFLECTOR_THICKNESS,led=1.5,span=14);
    translate([HP*HP_SIZE/3-2,HU*HU_SIZE-50,THICKNESS-1]) reflector(h=5,l=5,r1=5,r2=2,thickness=REFLECTOR_THICKNESS,led=1.5,span=14);
    translate([HP*HP_SIZE/3-2,HU*HU_SIZE-30,THICKNESS-1]) reflector(h=5,l=5,r1=5,r2=2,thickness=REFLECTOR_THICKNESS,led=1.5,span=14);
}

panel_power(armatures=ARMATURES); 
