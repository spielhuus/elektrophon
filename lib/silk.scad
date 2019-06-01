/** 
 * draw silkscreen text
 */

//FONT="Bitstream Vera Sans Mono:style=Bold";
FONT="Source Code Pro";

/**
 * draw the silkscreen text
 */
module silkscreen( text="lorem", thickness=5, screen=0.1, font_size=5, font=FONT, halign="center") {
    translate( [0, 0, -1])
        linear_extrude(height=thickness+2)
            rotate([180,0,0])
                text(text = text, font=font, size=font_size, halign=halign);
}

/** 
 * draw preview text
 */
module silkscreen_text( text="lorem", thickness=5, screen=0.1, font_size=5, font=FONT, halign="center", color="blue") {
    color(color) translate([0,0,0])
        linear_extrude(height=screen)
            rotate([180,0,0])
                text(text=text, font=font, size=font_size, halign=halign);
}

translate([0,0,0]) silkscreen();
translate([0,0,0]) silkscreen_text(); 
