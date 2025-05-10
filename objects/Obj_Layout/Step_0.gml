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
		//Floor sprite moving
		if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), (display_get_width()/10) - (display_get_width()/20) - 44, (display_get_height()/2 - display_get_height()/15) - 22, (display_get_width()/10) - (display_get_width()/10) + (96 * 19) + 44, (display_get_height()/2 - display_get_height()/15) + 24)) /*|| (global.StageZoom)*/ {
			BarStageShiftHoverSprite = "_SEL";
			if !(global.BarGrabStageShift < (display_get_width()/10) - (display_get_width()/10) + (96 * 19)) {
				global.BarGrabStageShift = (display_get_width()/10) - (display_get_width()/10) + (96 * 19) - 0.001;
			}
			else if !(global.BarGrabStageShift > (display_get_width()/10) - (display_get_width()/20)) {
				global.BarGrabStageShift = (display_get_width()/10) - (display_get_width()/20) + 0.001;
			}
			else {
				if mouse_wheel_up() { global.BarGrabStageShift += 150; }
				else if mouse_wheel_down() { global.BarGrabStageShift -= 150; }
				if (keyboard_check(vk_right) || keyboard_check(ord("D"))) { global.BarGrabStageShift += 10;
					if (keyboard_check(vk_shift)) { global.BarGrabStageShift += 14; }
					if (keyboard_check(vk_control)) { global.BarGrabStageShift -= 5; }
				}
				if (keyboard_check(vk_left) || keyboard_check(ord("A"))) { global.BarGrabStageShift -= 10;
					if (keyboard_check(vk_shift)) { global.BarGrabStageShift -= 14; }
					if (keyboard_check(vk_control)) { global.BarGrabStageShift += 5; }
				}
				if (keyboard_check(vk_up) || keyboard_check(ord("W"))) { global.BarGrabStageShift += 5;
					if (keyboard_check(vk_shift)) { global.BarGrabStageShift += 7; }
					if (keyboard_check(vk_control)) { global.BarGrabStageShift -= 2.5; }
				}
				if (keyboard_check(vk_down) || keyboard_check(ord("S"))) { global.BarGrabStageShift -= 5;
					if (keyboard_check(vk_shift)) { global.BarGrabStageShift -= 7; }
					if (keyboard_check(vk_control)) { global.BarGrabStageShift += 2.5; }
				}
			}
		}
		else {
			BarStageShiftHoverSprite = "";
		}
		//Door Toggler
		
		/*
		//Zoom in
		if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), 0, display_get_height()/2, display_get_width(), display_get_height()) && (global.spriteLoadedDoor && global.spriteLoadedFloor)) {
			if (mouse_check_button_pressed(mb_left)) {
				switch (global.StageZoom) {
					case false :
						global.StageZoom = true;
						break;
					case true :
						global.StageZoom = false;
						break;
				}
			}
		}
		*/
}