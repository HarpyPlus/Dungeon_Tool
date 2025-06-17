global.BarGrabStageShift = (display_get_width()/10) - (display_get_width()/20);
BarGrabStageShiftBeingGrabbed = false;

BlinkTimerFLOOR = 0;
BlinkFLOOR = "";
FloorTextTYPER = false;
BlinkTimerAUTHOR = 0;
BlinkAUTHOR = "";
AuthorTextTYPER = false;

global.DoorIconFrame = 1;
DoorTextColor = c_lime;
DoorStatus = "OPEN"

//_SEL goes on the end
BarStageShiftHoverSprite = "";
FloorTextHoverSprite = "";
AuthorTextHoverSprite = "";

switch (global.OPT_CurrentTheme) {
	case ("_T_d") : 
		ImportDustSelCol = make_color_rgb(25, 33, 66);
		DoorToggleSelCol = make_color_rgb(25, 33, 66);
		FloorSelCol = make_color_rgb(25, 33, 66);
		ParallaxSelCol = make_color_rgb(25, 33, 66);
		break;
	case ("_T_c") : 
		ImportDustSelCol = make_color_rgb(115, 62, 117);
		DoorToggleSelCol = make_color_rgb(115, 62, 117);
		UnknownSelCol = make_color_rgb(115, 62, 117);
		ParallaxSelCol = make_color_rgb(115, 62, 117);
		break;
}

global.StageZoom = false; //unused