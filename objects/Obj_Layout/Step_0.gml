Obj_Cursor.image_index = 0;
switch (room) {
	case (Rm_PlrEditor) :
		//text blink code
		if (BlinkTimer != 0) {
			BlinkTimer--
		}
		else {
			switch (Blink) {
				case "|" : Blink = ""; break;
				case "" : Blink = "|"; break;
			}
			BlinkTimer = 30;
		}
	case (Rm_FlrEditor) :
		if (!global.TopBarBounds && (global.spriteLoaded || (global.spriteLoadedDoor && global.spriteLoadedDoor)) && !global.HelpImShowingmyNameForLegitimateReasons) { //this is checking if we are not currently using something from the top bar!! crazy i know
			if string_length(global.TI_Floor) > 15 {
				global.TI_Floor = string_copy(global.TI_Floor, 0, string_length(global.TI_Floor) - 1)
			}
			if string_length(global.TI_Author) > 15 {
				global.TI_Author = string_copy(global.TI_Author, 0, string_length(global.TI_Author) - 1)
			}
			//text blinkers
			if (FloorTextTYPER) {
				if (keyboard_check_pressed(vk_anykey)) {
					if (keyboard_check_pressed(vk_backspace)) {
						global.TI_Floor = string_copy(global.TI_Floor, 0, string_length(global.TI_Floor) - 1)
					}
					else if (keyboard_check_pressed(vk_shift) || keyboard_check_pressed(vk_alt) || keyboard_check_pressed(vk_control)) {
					}
					else {
						global.TI_Floor += string_letters(keyboard_lastchar)
					}
				}
				if (BlinkTimerFLOOR != 0) {
					BlinkTimerFLOOR--
				}
				else {
					switch (BlinkFLOOR) {
						case "|" : BlinkFLOOR = ""; break;
						case "" : BlinkFLOOR = "|"; break;
					}
					BlinkTimerFLOOR = 30;
				}
			}
			if (AuthorTextTYPER) {
				if (keyboard_check_pressed(vk_anykey)) {
					if (keyboard_check_pressed(vk_backspace)) {
						global.TI_Author = string_copy(global.TI_Author, 0, string_length(global.TI_Author) - 1)
					}
					else if (keyboard_check_pressed(vk_shift)) {
					}
					else {
						global.TI_Author += string_letters(keyboard_lastchar)
					}
				}
				if (BlinkTimerAUTHOR != 0) {
					BlinkTimerAUTHOR--
				}
				else {
					switch (BlinkAUTHOR) {
						case "|" : BlinkAUTHOR = ""; break;
						case "" : BlinkAUTHOR = "|"; break;
					}
					BlinkTimerAUTHOR = 30;
				}
			}
			
			//Floor sprite moving
			if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), (display_get_width()/10) - (display_get_width()/20) - 44, (display_get_height()/2 - display_get_height()/15) - 22, (display_get_width()/10) - (display_get_width()/10) + (96 * 19) + 44, (display_get_height()/2 - display_get_height()/15) + 24)) /*|| (global.StageZoom)*/ {
				Obj_Cursor.image_index = 2;
				if  !((global.BarGrabStageShift < ((display_get_width()/10) - (display_get_width()/20))) && (global.BarGrabStageShift > ((display_get_width()/10) - (display_get_width()/10) + (96 * 19)))) {
					if (mouse_check_button(mb_left)) {
						display_mouse_set(device_mouse_x_to_gui(0), (display_get_gui_height()/2 - display_get_gui_height()/15));
						Obj_Cursor.image_index = 3;
						global.BarGrabStageShift = device_mouse_x_to_gui(0);
					}
				}
				BarStageShiftHoverSprite = "_SEL";
				//made them all ifs so that way you can press them all at once! :D
				//(God this was not a good idea)
				if mouse_wheel_up() { global.BarGrabStageShift += 150; }
				else if mouse_wheel_down() { global.BarGrabStageShift -= 150; }
				if !(global.BarGrabStageShift >= ((display_get_width()/10) - (display_get_width()/10) + (96 * 19))) {
					if (keyboard_check(vk_right) || keyboard_check(ord("D"))) { global.BarGrabStageShift += 10;
						if (keyboard_check(vk_shift)) { global.BarGrabStageShift += 14; }
						if (keyboard_check(vk_control)) { global.BarGrabStageShift -= 5; }
					}
					if (keyboard_check(vk_up) || keyboard_check(ord("W"))) { global.BarGrabStageShift += 5;
						if (keyboard_check(vk_shift)) { global.BarGrabStageShift += 7; }
						if (keyboard_check(vk_control)) { global.BarGrabStageShift -= 2.5; }
					}
				}
				else {
					global.BarGrabStageShift = (display_get_width()/10) - (display_get_width()/10) + (96 * 19);
				}
				if !(global.BarGrabStageShift <= ((display_get_width()/10) - (display_get_width()/20))) {
					if (keyboard_check(vk_left) || keyboard_check(ord("A"))) { global.BarGrabStageShift -= 10;
						if (keyboard_check(vk_shift)) { global.BarGrabStageShift -= 14; }
						if (keyboard_check(vk_control)) { global.BarGrabStageShift += 5; }
					}
					if (keyboard_check(vk_down) || keyboard_check(ord("S"))) { global.BarGrabStageShift -= 5;
						if (keyboard_check(vk_shift)) { global.BarGrabStageShift -= 7; }
						if (keyboard_check(vk_control)) { global.BarGrabStageShift += 2.5; }
					}
				}
				else {
					global.BarGrabStageShift = (display_get_width()/10) - (display_get_width()/20);
				}
			}
			else {
				BarStageShiftHoverSprite = "";
			}
			draw_rectangle(display_get_width()/7.9, display_get_height()/9.75, display_get_width()/3.07, display_get_height()/6.8, true)
			if ((point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), display_get_width()/7.9, display_get_height()/9.75, display_get_width()/3.07, display_get_height()/6.8))) {
				Obj_Cursor.image_index = 4;
				FloorTextHoverSprite = "_SEL";
				if (mouse_check_button_pressed(mb_left)) {
					FloorTextTYPER = true;
				}
			}
			else {
				FloorTextHoverSprite = "";
				if (mouse_check_button_pressed(mb_left)) {
					FloorTextTYPER = false;
					BlinkFLOOR = "";
				}
			}
			if ((point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), display_get_width()/7.9, display_get_height()/9.75 + 90, display_get_width()/3.07, display_get_height()/6.8 + 90))) {
				Obj_Cursor.image_index = 4;
				AuthorTextHoverSprite = "_SEL";
				if (mouse_check_button_pressed(mb_left)) {
					AuthorTextTYPER = true;
				}
			}
			else {
				AuthorTextHoverSprite = "";
				if (mouse_check_button_pressed(mb_left)) {
					AuthorTextTYPER = false;
					BlinkAUTHOR = "";
				}
			}
			//Door Toggle
			if ((point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), display_get_width()/40, (display_get_height()/11) - 15, display_get_width()/9.25, (display_get_height()/2.575)))) {
				Obj_Cursor.image_index = 1;
				DoorToggleSelCol = c_yellow;
				if (mouse_check_button_pressed(mb_left)) {
					switch (global.DOOR_OPENER) {
						case (0) :
							global.DOOR_OPENER = 180;
							DoorStatus = "CLOSED"
							DoorTextColor = c_red;
							global.DoorIconFrame = 0;
							break;
						case (180) :
							global.DOOR_OPENER = 0;
							DoorStatus = "OPEN"
							DoorTextColor = c_lime;
							global.DoorIconFrame = 1;
							break;
					}
				}
			}
			else {
				DoorToggleSelCol = make_color_rgb(25, 33, 66);
			}
			/*
			if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), display_get_width()/6.5, display_get_height()/3.225, display_get_width()/3.825, display_get_height()/2.71)) {
				ImportDustSelCol = c_yellow;
				if (mouse_check_button_pressed(mb_left)) {
					global.dust_sprite = get_open_filename(".png", "Spr_Dust");
					global.spriteDust = sprite_add(global.dust_sprite, 1, false, false, 0, 0);
				}
			}
			else { ImportDustSelCol = make_color_rgb(25, 33, 66); }
			*/
		}
}