global.BarGrabStageShift = (display_get_width()/10) - (display_get_width()/20);
BarGrabStageShiftBeingGrabbed = false;

BlinkTimer = 60;
Blink = "";
Selected = "Waiting..."

//_SEL goes on the end
BarStageShiftHoverSprite = "";

switch (global.OPT_CurrentTheme) {
	case ("_T_d") : 
		DoorToggleSelCol = make_color_rgb(25, 33, 66);
		FloorSelCol = make_color_rgb(25, 33, 66);
		ParallaxSelCol = make_color_rgb(25, 33, 66);
		break;
	case ("_T_c") : 
		DoorToggleSelCol = make_color_rgb(115, 62, 117);
		UnknownSelCol = make_color_rgb(115, 62, 117);
		ParallaxSelCol = make_color_rgb(115, 62, 117);
		break;
}

global.StageZoom = false; //unused