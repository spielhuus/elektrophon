import sys, os
import shutil
import math

LIST_pts = ["    (polygon\n      (pts\n        (xy ","    (filled_polygon\n      (pts\n        (xy ",") (xy ",")\n      )\n    )"]


def FNC_poly (cntr, # (x,y)
              innerRadius,
              outerRadius,
              sides,
              startangle,
              angle,
              ):

    STR_data = ""
    baseX = cntr[0]
    baseY = cntr[1]
    sideangle = angle / sides

    for i in range(sides):
        pointX = baseX + innerRadius * math.sin(math.radians(sideangle*(i+0.5) + startangle))
        pointY = baseY + innerRadius * math.cos(math.radians(sideangle*(i+0.5) + startangle))
        STR_data += "{:.4f}".format(pointX) + " " + "{:.4f}".format(pointY) + LIST_pts[2]
    for i in range(sides):
        pointX = baseX + outerRadius * math.sin(math.radians(sideangle*((sides-i-1)+0.5) + startangle))
        pointY = baseY + outerRadius * math.cos(math.radians(sideangle*((sides-i-1)+0.5) + startangle))
        STR_data += "{:.4f}".format(pointX) + " " + "{:.4f}".format(pointY) + LIST_pts[2]
    STR_data = STR_data[:-6] + LIST_pts[3]
    return LIST_pts[0] + STR_data + "\n" + LIST_pts[1] + STR_data




if __name__ == '__main__':

    Center = [48.26,132.08] # x/y coordinates of the centre of the pcb sheet
    innerRadius = 0 # mm
    outerRadius = 4 # 2 # mm
    Sides = 200
    StartAngle = 0.0 # degrees
    Angle = 361.0 # degrees

    print FNC_poly (Center,
                    innerRadius,
		    outerRadius,
                    Sides,
                    StartAngle,
                    Angle,
                    )
