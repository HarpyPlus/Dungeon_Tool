//I cant even EXPLAIN what is happening im just as confused as you are
//left a few comments so that a basic grasp can be formed

gpu_set_texfilter(!global.OPT_AddedTextureSharpen); //Options; if true, will sharpen imported image

if (global.spriteLoaded || (global.spriteLoadedDoor && global.spriteLoadedDoor)) {
	global.SpriteLoadColor = c_black
	//changes this text color - called later - to black, 
	//to signify that you can now do this action
}

_current_hour = current_hour

//if player is on nothing, go back to white
if (!InFileBounds || !InEditBounds || !InViewBounds || !InHelpBounds) {
	global.TopBarBounds = false;
	FirstSelCol = c_white;
	SeconSelCol = c_white;
	ThirdSelCol = c_white;
	FourtSelCol = c_white;
	FifthSelCol = c_white;
	SixthSelCol = c_white;
	SevenSelCol = c_white;
}
if (InFileBounds || InEditBounds || InViewBounds || InHelpBounds) {
	global.TopBarBounds = true;
}

#region FILE
if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 0, 0, 124, 44)) {
	InFileBounds = true;
	FileSelCol = make_color_rgb(161, 231, 254);
}
else if ((point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), -2, 45, 440, BottomFileBB) && (InFileBounds == true))) {
	switch (room) {
		case (Rm_FlrEditor) :
			//New
			if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 4, 51, 434, 90)) {
				Obj_Cursor.image_index = 1;
				FirstSelCol = make_color_rgb(161, 231, 254);
				if (mouse_check_button_pressed(mb_left)) {
					var floor_sprite = get_open_filename(".png", "Spr_Floor");
					global.spriteFloor = sprite_add(floor_sprite, 1, false, false, 0, 0);
					var door_sprite = get_open_filename(".png", "Spr_Door");
					global.spriteDoor = sprite_add(door_sprite, 1, false, false, 0, 0);
					if (1 = 1) {
						global.spriteLoadedDoor = true;
						global.spriteLoadedFloor = true;
					}
				}
			}
			else { FirstSelCol = c_white; }
			//Open
			if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 4, 91, 434, 125)) {
				Obj_Cursor.image_index = 1;
				SeconSelCol = make_color_rgb(161, 231, 254);
				if (mouse_check_button_pressed(mb_left)) {
					var floor_sprite = get_open_filename(".dgflr", "FLOOR");
				}
			}
			else { SeconSelCol = c_white; }
			//Recent
			if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 4, 126, 434, 160)) {
				Obj_Cursor.image_index = 1;
				ThirdSelCol = make_color_rgb(161, 231, 254);
			}
			else { ThirdSelCol = c_white; }
			//Save
			if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 4, 176, 434, 210)) {
				Obj_Cursor.image_index = 1;
				FourtSelCol = make_color_rgb(161, 231, 254);
			}
			else { FourtSelCol = c_white; }
			//Close
			if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 4, 226, 434, 260)) {
				Obj_Cursor.image_index = 1;
				FifthSelCol = make_color_rgb(161, 231, 254);
			}
			else { FifthSelCol = c_white; }
			//Exit
			if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 4, 261, 434, 295)) {
				Obj_Cursor.image_index = 1;
				SixthSelCol = make_color_rgb(161, 231, 254);
				if (mouse_check_button(mb_left)) {
					gpu_set_texfilter(true)
					room = Rm_Title
				}
			}
			else { SixthSelCol = c_white; }
			break;
		case (Rm_PlrEditor) :
			//New
			if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 4, 51, 434, 90)) {
				Obj_Cursor.image_index = 1;
				FirstSelCol = make_color_rgb(161, 231, 254);
				if (mouse_check_button_pressed(mb_left)) {
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
				Obj_Cursor.image_index = 1;
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
				Obj_Cursor.image_index = 1;
				ThirdSelCol = make_color_rgb(161, 231, 254);
			}
			else { ThirdSelCol = c_white; }
			//Save
			if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 4, 176, 434, 210)) {
				Obj_Cursor.image_index = 1;
				FourtSelCol = make_color_rgb(161, 231, 254);
			}
			else { FourtSelCol = c_white; }
			//Close
			if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 4, 226, 434, 260)) {
				Obj_Cursor.image_index = 1;
				FifthSelCol = make_color_rgb(161, 231, 254);
			}
			else { FifthSelCol = c_white; }
			//Exit
			if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 4, 261, 434, 295)) {
				Obj_Cursor.image_index = 1;
				SixthSelCol = make_color_rgb(161, 231, 254);
				if (mouse_check_button(mb_left)) {
					gpu_set_texfilter(true)
					room = Rm_Title
				}
			}
			else { SixthSelCol = c_white; }
			break;
	}
}
else { FileSelCol = c_white; InFileBounds = false; }
#endregion

//EDIT

if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 125, 0, 249, 44)) {
	InEditBounds = true;
	EditSelCol = make_color_rgb(161, 231, 254);
}
else if ((point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 125, 45, 565, 135) && (InEditBounds == true))) {
	if (global.SpriteLoadColor != c_ltgray) {
		SeconSelCol = c_white; 
		/*
		//Reload Sheet
		if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 131, 52, 559, 90)) {
			FirstSelCol = make_color_rgb(161, 231, 254);
			if (mouse_check_button(mb_left)) {
				switch (room) {
					case (Rm_FlrEditor) :
						break;
					case (Rm_PlrEditor) :
						if (Obj_Preview.sprite_index != Spr_Blank) {
							Obj_Preview.sprite_index = Spr_Blank;
						}
						if (Obj_Preview.sprite_index == Spr_Blank) {
							draw_sprite_part_ext(Obj_Preview.sprite_index, Obj_Preview.image_index, global.MyPCFrameX, global.MyPCFrameY, 32, 32,  Obj_Preview.x + (32 * -6.25), Obj_Preview.y, 25/2, 25/2, c_white, 1);
							draw_sprite_part_ext(Obj_Preview.sprite_index, Obj_Preview.image_index, global.MyCPFrameX, global.MyCPFrameY, 32, 32,  Obj_Preview.x + (32 * -6.25), Obj_Preview.y + (32 * 14.75), 25/2, 25/2, c_white, 1);
						}
						break;
				}
			}
		}
		else { FirstSelCol = c_white; }
		//Preview whatever your on
		if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 131, 91, 559, 125)) {
			SeconSelCol = make_color_rgb(161, 231, 254);
			//under works atm
			/*
			if (mouse_check_button(mb_left)) {
				switch (room) {
					case (Rm_FlrEditor) :
						global.WhatAmITesting = "Floor";
					case (Rm_PlrEditor) :
						global.WhatAmITesting = "Player";
				}
				room = Rm_Testing;
			}
			*/
		//}
		//else { SeconSelCol = c_white; }
	}
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
		Obj_Cursor.image_index = 1;
		FirstSelCol = make_color_rgb(161, 231, 254);
		if (mouse_check_button_pressed(mb_left)) {
			global.HelpImShowingmyNameForLegitimateReasons = true;
			if (keyboard_check(vk_escape)) {
				global.HelpImShowingmyNameForLegitimateReasons = false;
			}
		}
	}
	else { FirstSelCol = c_white; }
}
else { HelpSelCol = c_white; InHelpBounds = false; }

// KEYBINDS //

#region Keybinds
if (keyboard_check(vk_control)) {
	switch (room) {
		//FLOOR
		case (Rm_FlrEditor) :
			//File, NEW
			if (keyboard_check(ord("N"))) {
				var floor_sprite = get_open_filename(".png", "Spr_Floor");
				global.spriteFloor = sprite_add(floor_sprite, 1, false, false, 0, 0);
				var door_sprite = get_open_filename(".png", "Spr_Door");
				global.spriteDoor = sprite_add(door_sprite, 1, false, false, 0, 0);
				if (1 = 1) {
					global.spriteLoadedDoor = true;
					global.spriteLoadedFloor = true;
				}
			}
			//Edit, RELOAD
			if (keyboard_check(ord("R"))) {
				//Reload all opened sheets, maybe something got fucked up?
			}
			//Edit, PREVIEW
			if (keyboard_check(ord("P"))) {
				//Preview your floor in-game, not just on the bottom of the screen
			}
			break;
		//PLAYER
		case (Rm_PlrEditor) :
			//File, NEW
			if (keyboard_check(ord("N"))) {
				var player_sprite = get_open_filename(".png", "Spr_Player");
				global.spritePlayer = sprite_add(player_sprite, 1, false, false, 0, 0);
				if (1 = 1) {
					Obj_Preview.sprite_index = global.spritePlayer;
					global.spriteLoaded = true;
				}
			}
			//File, OPEN
			if (keyboard_check(ord("O"))) {
				//Opens character file, contains all offsets, character sheets, all that
			}
			//File, SAVE
			if (keyboard_check(ord("S"))) {
				//Save character sheet
			}
			//Edit, RELOAD
			if (keyboard_check(ord("R"))) {
				//Reload all opened sheets, maybe something got fucked up?
			}
			//Edit, PREVIEW
			if (keyboard_check(ord("P"))) {
				//Preview your character in-game
			}
			break;
	}
}
if (keyboard_check(vk_escape) && global.HelpImShowingmyNameForLegitimateReasons) {
	global.HelpImShowingmyNameForLegitimateReasons = false;
}
else if (keyboard_check_pressed(vk_escape) && !global.HelpImShowingmyNameForLegitimateReasons) {
	gpu_set_texfilter(true);
	room = Rm_Title;
}
#endregion