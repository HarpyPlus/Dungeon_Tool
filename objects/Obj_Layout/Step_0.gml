if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), BarGrabStageShift - 44, (display_get_height()/2 - display_get_height()/15) - 24, BarGrabStageShift + 44, (display_get_height()/2 - display_get_height()/15) + 24)) {
	if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), (display_get_width()/10) - (display_get_width()/20), 0, (display_get_width()/10) - (display_get_width()/10) + (96 * 19), display_get_height())) {
		if (mouse_check_button(mb_left)) { BarGrabStageShiftBeingGrabbed = true; }
		else { BarGrabStageShiftBeingGrabbed = false; }
	}
	else { BarGrabStageShiftBeingGrabbed = false; }
}
if (BarGrabStageShiftBeingGrabbed) {
	if (BarGrabStageShift > (display_get_width()/10) - (display_get_width()/10) + (96 * 19)) {
		BarGrabStageShift = (display_get_width()/10) - (display_get_width()/10) + (96 * 19);
		BarGrabStageShiftBeingGrabbed = false;
	}
	else if (BarGrabStageShift < (display_get_width()/10) - (display_get_width()/20)) {
		BarGrabStageShift = (display_get_width()/10) - (display_get_width()/20);
		BarGrabStageShiftBeingGrabbed = false;
	}
	else { BarGrabStageShift = device_mouse_x_to_gui(0); }
}