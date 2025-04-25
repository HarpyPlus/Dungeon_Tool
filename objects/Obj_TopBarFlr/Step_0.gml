
//FILE

if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 0, 0, 124, 44)) {
	InFileBounds = true;
	FileSelCol = make_color_rgb(161, 231, 254);
}
else if ((point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), -2, 45, 440, 205) && (InFileBounds == true))) {
	//New
	if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 4, 51, 434, 90)) {
		FNSelCol = make_color_rgb(161, 231, 254);
		if (mouse_check_button_pressed(mb_left)) {
			var floor_sprite = get_open_filename(".png", "Spr_Floor");
			global.spriteFloor = sprite_add(floor_sprite, 1, false, false, 0, 0);
			var door_sprite = get_open_filename(".png", "Spr_Door");
			global.spriteDoor = sprite_add(door_sprite, 1, false, false, 0, 0);
			if (1 = 1) {
				Obj_PreviewFlr.sprite_index = global.spriteFloor;
				global.spriteLoaded = true;
			}
		}
	}
	else { FNSelCol = c_white; }
	//Recent
	if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 4, 91, 434, 125)) {
		FRSelCol = make_color_rgb(161, 231, 254);
	}
	else { FRSelCol = c_white; }
	//Close
	if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 4, 126, 434, 160)) {
		FCSelCol = make_color_rgb(161, 231, 254);
	}
	else { FCSelCol = c_white; }
	//Exit
	if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 4, 161, 434, 195)) {
		FESelCol = make_color_rgb(161, 231, 254);
		if (mouse_check_button(mb_left)) {
			room = Rm_Title;
		}
	}
	else { FESelCol = c_white; }
}
else { FileSelCol = c_white; InFileBounds = false; InBounds = false; }

//EDIT

if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 125, 0, 249, 44)) {
	InEditBounds = true;
	EditSelCol = make_color_rgb(161, 231, 254);
}
else if ((point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 125, 45, 565, 135) && (InEditBounds == true))) {
	//fill in with something later.
}
else { EditSelCol = c_white; InEditBounds = false; }

//VIEW

if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 250, 0, 374, 44)) {
	ViewSelCol = make_color_rgb(161, 231, 254);
}
else { ViewSelCol = c_white; }

//HELP

if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 375, -2, 500, 44)) {
	InHelpBounds = true;
	HelpSelCol = make_color_rgb(161, 231, 254);
}
else if ((point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 375, 46, 815, 135) && (InHelpBounds == true))) {
	//fill in with something later.
}
else { HelpSelCol = c_white; InHelpBounds = false; }

//KEYBINDS
if (keyboard_check(vk_control)) {
	//File, NEW
	if keyboard_check(ord("N")) {
		var floor_sprite = get_open_filename(".png", "Spr_Floor");
		global.spriteFloor = sprite_add(floor_sprite, 1, false, false, 0, 0);
		var door_sprite = get_open_filename(".png", "Spr_Door");
		global.spriteDoor = sprite_add(door_sprite, 1, false, false, 0, 0);
		if (1 = 1) {
			Obj_PreviewFlr.sprite_index = global.spriteFloor;
			global.spriteLoaded = true;
		}
	}
}
else if (keyboard_check_pressed(vk_escape)) {
	room = Rm_Title;
}