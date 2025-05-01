
_current_hour = current_hour

//FILE

//if player is on nothing, go back to white
if (!InFileBounds || !InEditBounds || !InViewBounds || !InHelpBounds) {
	FirstSelCol = c_white;
	SeconSelCol = c_white;
	ThirdSelCol = c_white;
	FourtSelCol = c_white;
	FifthSelCol = c_white;
	SixthSelCol = c_white;
	SevenSelCol = c_white;
}

if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 0, 0, 124, 44)) {
	InFileBounds = true;
	FileSelCol = make_color_rgb(161, 231, 254);
}
else if ((point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), -2, 45, 440, BottomFileBB) && (InFileBounds == true))) {
	switch (room) {
		//FLOOR
		case (Rm_FlrEditor) :
			//New
			if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 4, 51, 434, 90)) {
				FirstSelCol = make_color_rgb(161, 231, 254);
				if (mouse_check_button_pressed(mb_left)) {
					gpu_set_texfilter(global.OPT_AddedTextureSharpen); //Options; if true, will sharpen imported image
					var floor_sprite = get_open_filename(".png", "Spr_Floor");
					global.spriteFloor = sprite_add(floor_sprite, 1, false, false, 0, 0);
					var door_sprite = get_open_filename(".png", "Spr_Door");
					global.spriteDoor = sprite_add(door_sprite, 1, false, false, 0, 0);
					if (1 = 1) {
						Obj_Preview.sprite_index = global.spriteFloor;
						global.spriteLoaded = true;
					}
				}
			}
			else { FirstSelCol = c_white; }
			//Recent
			if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 4, 91, 434, 125)) {
				SeconSelCol = make_color_rgb(161, 231, 254);
			}
			else { SeconSelCol = c_white; }
			//Close
			if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 4, 126, 434, 160)) {
				ThirdSelCol = make_color_rgb(161, 231, 254);
			}
			else { ThirdSelCol = c_white; }
			//Exit
			if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 4, 161, 434, 195)) {
				FourtSelCol = make_color_rgb(161, 231, 254);
				if (mouse_check_button(mb_left)) {
					room = Rm_Title;
				}
			}
			else { FourtSelCol = c_white; }
			break
		//PLAYER
		case (Rm_PlrEditor) :
			//New
			if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 4, 51, 434, 90)) {
				FirstSelCol = make_color_rgb(161, 231, 254);
				if (mouse_check_button_pressed(mb_left)) {
					gpu_set_texfilter(!global.OPT_AddedTextureSharpen);
					var player_sprite = get_open_filename(".png", "Spr_Player");
					global.spritePlayer = sprite_add(player_sprite, 1, false, false, 0, 0);
					if (1 = 1) {
						Obj_Preview.sprite_index = global.spritePlayer;
						global.spriteLoaded = true;
					}
				}
			}
			else { FirstSelCol = c_white; }
			//Open
			if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 4, 91, 434, 125)) {
				SeconSelCol = make_color_rgb(161, 231, 254);
				if (mouse_check_button_pressed(mb_left)) {
					var player_sprite = get_open_filename(".dgcha", "CLASS");
					player_sprite = filename_name(file_find_first("C:/Games/*.doc", 0));
					global.spritePlayer = sprite_add(player_sprite, 1, false, false, 0, 0);
					if (1 = 1) {
						Obj_Preview.sprite_index = global.spritePlayer;
						global.spriteLoaded = true;
					}
				}
			}
			else { SeconSelCol = c_white; }
			//Recent
			if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 4, 126, 434, 160)) {
				ThirdSelCol = make_color_rgb(161, 231, 254);
			}
			else { ThirdSelCol = c_white; }
			//Save
			if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 4, 176, 434, 210)) {
				FourtSelCol = make_color_rgb(161, 231, 254);
			}
			else { FourtSelCol = c_white; }
			//Close
			if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 4, 226, 434, 260)) {
				FifthSelCol = make_color_rgb(161, 231, 254);
			}
			else { FifthSelCol = c_white; }
			//Exit
			if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 4, 261, 434, 295)) {
				SixthSelCol = make_color_rgb(161, 231, 254);
				if (mouse_check_button(mb_left)) {
					gpu_set_texfilter(!false)
					room = Rm_Title
				}
			}
			else { SixthSelCol = c_white; }
			break
	}
}
else { FileSelCol = c_white; InFileBounds = false; }

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
else if ((point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 375, 45, 565, 100) && (InHelpBounds == true))) {
	//About
	if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 381, 52, 559, 90)) {
		FirstSelCol = make_color_rgb(161, 231, 254);
	}
	else { FirstSelCol = c_white; }
}
else { HelpSelCol = c_white; InHelpBounds = false; }


// KEYBINDS //


if (keyboard_check(vk_control)) {
	switch (room) {
		//FLOOR
		case (Rm_FlrEditor) :
			//File, NEW
			if keyboard_check(ord("N")) {
				var floor_sprite = get_open_filename(".png", "Spr_Floor");
				global.spriteFloor = sprite_add(floor_sprite, 1, false, false, 0, 0);
				var door_sprite = get_open_filename(".png", "Spr_Door");
				global.spriteDoor = sprite_add(door_sprite, 1, false, false, 0, 0);
				if (1 = 1) {
					Obj_Preview.sprite_index = global.spriteFloor;
					global.spriteLoaded = true;
				}
			}
			//Edit, RELOAD
			if keyboard_check(ord("R")) {
				//Reload all opened sheets, maybe something got fucked up?
			}
			//Edit, PREVIEW
			if keyboard_check(ord("P")) {
				//Preview your floor in-game, not just on the bottom of the screen
			}
			break
		//PLAYER
		case (Rm_PlrEditor) :
			//File, NEW
			if keyboard_check(ord("N")) {
				gpu_set_texfilter(!global.OPT_AddedTextureSharpen);
				var player_sprite = get_open_filename(".png", "Spr_Player");
				global.spritePlayer = sprite_add(player_sprite, 1, false, false, 0, 0);
				if (1 = 1) {
					Obj_Preview.sprite_index = global.spritePlayer;
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
			break
	}
}
else if (keyboard_check_pressed(vk_escape)) {
	gpu_set_texfilter(!false);
	room = Rm_Title;
}