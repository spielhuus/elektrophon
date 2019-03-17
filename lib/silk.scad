/** 
 * draw silkscreen text
 */

FONT="Bitstream Vera Sans Mono:style=Bold";

/**
 * draw the silkscreen text
 */
module silkscreen( text="lorem", thickness=10, screen=1, font_size=5 ) {
    translate( [0, 0, screen])
        linear_extrude(height = thickness-screen)
            rotate([180,0,0])
                text(text = text, font = FONT, size = font_size, halign = "center");
}

/** 
 * draw preview text
 */
module silkscreen_text( text="lorem", thickness=6, screen=1, font_size=5 ) {
    color("blue") translate( [0, 0, 0])
        linear_extrude(height = screen)
            rotate([180,0,0])
                text(text = text, font = FONT, size = font_size, halign = "center");
}

translate([0,0,0]) silkscreen();
translate([0,0,0]) silkscreen_text(); 
