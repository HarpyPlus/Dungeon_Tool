
_current_hour = current_hour

//FILE

if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 0, 0, 124, 44)) {
	InFileBounds = true;
	FileSelCol = make_color_rgb(161, 231, 254);
}
else if ((point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), -2, 45, 440, 305) && (InFileBounds == true))) {
	//New
	if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 4, 51, 434, 90)) {
		FNSelCol = make_color_rgb(161, 231, 254);
		if (mouse_check_button_pressed(mb_left)) {
			var player_sprite = get_open_filename(".png", "Spr_Player");
			global.spritePlayer = sprite_add(player_sprite, 1, false, false, 0, 0);
			if (1 = 1) {
				Obj_PreviewPlr.sprite_index = global.spritePlayer;
				global.spriteLoaded = true;
			}
		}
	}
	else { FNSelCol = c_white; }
	//Open
	if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 4, 91, 434, 125)) {
		FOSelCol = make_color_rgb(161, 231, 254);
		if (mouse_check_button_pressed(mb_left)) {
			var player_sprite = get_open_filename(".dgcha", "CLASS");
			player_sprite = filename_name(file_find_first("C:/Games/*.doc", 0));
			global.spritePlayer = sprite_add(player_sprite, 1, false, false, 0, 0);
			if (1 = 1) {
				Obj_PreviewPlr.sprite_index = global.spritePlayer;
				global.spriteLoaded = true;
			}
		}
	}
	else { FOSelCol = c_white; }
	//Recent
	if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 4, 126, 434, 160)) {
		FRSelCol = make_color_rgb(161, 231, 254);
	}
	else { FRSelCol = c_white; }
	//Save
	if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 4, 176, 434, 210)) {
		FSSelCol = make_color_rgb(161, 231, 254);
	}
	else { FSSelCol = c_white; }
	//Close
	if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 4, 226, 434, 260)) {
		FCSelCol = make_color_rgb(161, 231, 254);
	}
	else { FCSelCol = c_white; }
	//Exit
	if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 4, 261, 434, 295)) {
		FESelCol = make_color_rgb(161, 231, 254);
		if (mouse_check_button(mb_left)) {
			room = Rm_Title
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
		var player_sprite = get_open_filename(".png", "Spr_Player");
		global.spritePlayer = sprite_add(player_sprite, 1, false, false, 0, 0);
		if (1 = 1) {
			Obj_PreviewPlr.sprite_index = global.spritePlayer;
			global.spriteLoaded = true;
		}
	}
	//File, OPEN
	if keyboard_check(ord("O")) {
		//Opens character file, contains all offsets, character sheets, all that
	}
	//File, SAVE
	if keyboard_check(ord("S")) {
		//Save character sheet
	}
	//Edit, RELOAD
	if keyboard_check(ord("R")) {
		//Reload all opened sheets, maybe something got fucked up?
	}
	//Edit, PREVIEW
	if keyboard_check(ord("P")) {
		//Preview your character in-game
	}
}
else if (keyboard_check_pressed(vk_escape)) {
	room = Rm_Title;
}