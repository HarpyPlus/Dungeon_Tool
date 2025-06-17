/// @description displays sprite
draw_set_font(fnt_File);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
switch (room) {
	case (Rm_FlrEditor) :
		if (global.spriteLoadedFloor) {
			gpu_set_blendmode(bm_normal);
			//Makes it black behind the floor
			draw_sprite_ext(Spr_WHITE, 0, 0, display_get_height()/2, 120, 34, 0, c_black, 1);
			
			#region Floors and backgrounds
			if (global.FloorLayer[6]) {
				for (var i = 100; i < ((320*FloorCount)*2); i += 320) {	//6
					gpu_set_blendmode(bm_normal);
					draw_sprite_part_ext(global.spriteFloor, -1, 0, 180 * 5, 320, 180, (((i - BarShiftX6) - 320) * 3), display_get_height()/2, 3, 3, c_white, 1);
					if (global.FloorSelected == "LAYER6") {
						for (var whiten = 0; whiten < 20; whiten += 1) {
							gpu_set_blendmode(bm_add);
							draw_sprite_part_ext(global.spriteFloor, -1, 0, 180 * 5, 320, 180, (((i - BarShiftX4) - 320) * 3), display_get_height()/2, 3, 3, c_white, 1);
						}
						gpu_set_blendmode(bm_normal);
					}
				}
			}
			if (global.FloorLayer[5]) {
				for (var j = 100; j < ((320*FloorCount)*2); j += 320) {	//5
					gpu_set_blendmode(bm_normal);
					draw_sprite_part_ext(global.spriteFloor, -1, 0, 180 * 4, 320, 180, (((j - BarShiftX5) - 320) * 3), display_get_height()/2, 3, 3, c_white, 1);
					if (global.FloorSelected == "LAYER5") {
						for (var whiten = 0; whiten < 20; whiten += 1) {
							gpu_set_blendmode(bm_add);
							draw_sprite_part_ext(global.spriteFloor, -1, 0, 180 * 4, 320, 180, (((j - BarShiftX4) - 320) * 3), display_get_height()/2, 3, 3, c_white, 1);
						}
						gpu_set_blendmode(bm_normal);
					}
				}
			}
			if (global.FloorLayer[4]) {
				for (var k = 100; k < ((320*FloorCount)*2); k += 320) {	//4
					gpu_set_blendmode(bm_normal);
					draw_sprite_part_ext(global.spriteFloor, -1, 0, 180 * 3, 320, 180, (((k - BarShiftX4) - 320) * 3), display_get_height()/2, 3, 3, c_white, 1);
					if (global.FloorSelected == "LAYER4") {
						for (var whiten = 0; whiten < 20; whiten += 1) {
							gpu_set_blendmode(bm_add);
							draw_sprite_part_ext(global.spriteFloor, -1, 0, 180 * 3, 320, 180, (((k - BarShiftX4) - 320) * 3), display_get_height()/2, 3, 3, c_white, 1);
						}
						gpu_set_blendmode(bm_normal);
					}
				}
			}
			if (global.FloorLayer[3]) {
				for (var l = 100; l < ((320*FloorCount)*2); l += 320) {	//3
					gpu_set_blendmode(bm_normal);
					draw_sprite_part_ext(global.spriteFloor, -1, 0, 180 * 2, 320, 180, (((l - BarShiftX3) - 320) * 3), display_get_height()/2, 3, 3, c_white, 1);
					if (global.FloorSelected == "LAYER3") {
						for (var whiten = 0; whiten < 20; whiten += 1) {
							gpu_set_blendmode(bm_add);
							draw_sprite_part_ext(global.spriteFloor, -1, 0, 180 * 2, 320, 180, (((l - BarShiftX3) - 320) * 3), display_get_height()/2, 3, 3, c_white, 1);
						}
						gpu_set_blendmode(bm_normal);
					}
				}
			}
			if (global.FloorLayer[2]) {
				for (var m = 100; m < ((320*FloorCount)*2); m += 320) {	//2
					gpu_set_blendmode(bm_normal);
					draw_sprite_part_ext(global.spriteFloor, -1, 0, 180 * 1, 320, 180, (((m - BarShiftX2) - 320) * 3), display_get_height()/2, 3, 3, c_white, 1);
					if (global.FloorSelected == "LAYER2") {
						for (var whiten = 0; whiten < 20; whiten += 1) {
							gpu_set_blendmode(bm_add);
							draw_sprite_part_ext(global.spriteFloor, -1, 0, 180 * 1, 320, 180, (((m - BarShiftX2) - 320) * 3), display_get_height()/2, 3, 3, c_white, 1);
						}
						gpu_set_blendmode(bm_normal);
					}
				}
			}
			if (global.FloorLayer[1]) {
				for (var n = 100; n < (320*FloorCount); n += 320) {		//1
					gpu_set_blendmode(bm_normal);
					draw_sprite_part_ext(global.spriteFloor, -1, 0, 180 * 0, 320, 180, ((n - BarShiftX1) * 3), display_get_height()/2, 3, 3, c_white, 1);
					if (global.FloorSelected == "LAYER1") {
						for (var whiten = 0; whiten < 20; whiten += 1) {
							gpu_set_blendmode(bm_add);
							draw_sprite_part_ext(global.spriteFloor, -1, 0, 180 * 0, 320, 180, ((n - BarShiftX1) * 3), display_get_height()/2, 3, 3, c_white, 1);
						}
						gpu_set_blendmode(bm_normal);
					}
				}
			}
			gpu_set_blendmode(bm_normal);
			#endregion
		}
		if (global.spriteLoadedDoor) {
			//Stairs
			if (global.FloorLayer[2] == true) {
				draw_sprite_part_ext(global.spriteDoor, -1,	0, 360, 100, 180, ((0 - BarShiftX1) * 3), display_get_height()/2, 3, 3, c_white, 1);
				draw_sprite_part_ext(global.spriteDoor, -1, 100, 360, 100, 180, ((100 + (320 * FloorCount) - BarShiftX1) * 3), display_get_height()/2, 3, 3, c_white, 1);
				if (global.FloorSelected == "LAYER2") {
					for (var whiten = 0; whiten < 20; whiten += 1) {
						gpu_set_blendmode(bm_add);
						draw_sprite_part_ext(global.spriteDoor, -1,	0, 360, 100, 180, ((0 - BarShiftX1) * 3), display_get_height()/2, 3, 3, c_white, 1);
						draw_sprite_part_ext(global.spriteDoor, -1, 100, 360, 100, 180, ((100 + (320 * FloorCount) - BarShiftX1) * 3), display_get_height()/2, 3, 3, c_white, 1);
					}
					gpu_set_blendmode(bm_normal);
				}
			}
			//Doors
			if (global.FloorLayer[1] == true) {
				gpu_set_blendmode(bm_normal);
				draw_sprite_part_ext(global.spriteDoor, -1, 0, global.DOOR_OPENER, 100, 180, ((0 - BarShiftX1) * 3), display_get_height()/2, 3, 3, c_white, 1);
				draw_sprite_part_ext(global.spriteDoor, -1, 100, global.DOOR_OPENER, 100, 180, ((100 + (320 * FloorCount) - BarShiftX1) * 3), display_get_height()/2, 3, 3, c_white, 1);
				if (global.FloorSelected == "LAYER1") {
					for (var whiten = 0; whiten < 20; whiten += 1) {
						gpu_set_blendmode(bm_add);
						draw_sprite_part_ext(global.spriteDoor, -1, 0, global.DOOR_OPENER, 100, 180, ((0 - BarShiftX1) * 3), display_get_height()/2, 3, 3, c_white, 1);
						draw_sprite_part_ext(global.spriteDoor, -1, 100, global.DOOR_OPENER, 100, 180, ((100 + (320 * FloorCount) - BarShiftX1) * 3), display_get_height()/2, 3, 3, c_white, 1);
					}
					gpu_set_blendmode(bm_normal);
				}
			}
		}
		break;
	case (Rm_PlrEditor) :
		if (global.spriteLoaded) {
			if (sprite_exists(Obj_Preview.sprite_index)) {
				draw_sprite_part_ext(Obj_Preview.sprite_index, Obj_Preview.image_index, global.MyPCFrameX, global.MyPCFrameY, 32, 32,  Obj_Preview.x + (32 * -6.25), Obj_Preview.y, 25/2, 25/2, c_white, 1);
				draw_sprite_part_ext(Obj_Preview.sprite_index, Obj_Preview.image_index, global.MyCPFrameX, global.MyCPFrameY, 32, 32,  Obj_Preview.x + (32 * -6.25), Obj_Preview.y + (32 * 14.75), 25/2, 25/2, c_white, 1);
				break;
			}
		}
}

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if (global.HelpImShowingmyNameForLegitimateReasons) {
	draw_rectangle_color(display_get_width()/2.5, display_get_height()/2 - display_get_height()/12, display_get_width()/1.675, display_get_height()/2 + display_get_height()/12, make_color_rgb(29, 62, 99), make_color_rgb(29, 62, 99), make_color_rgb(29, 62, 99), make_color_rgb(29, 62, 99), false)
	draw_text_transformed_color(display_get_width()/2, display_get_height()/2, "Developed by \n Sora \"HarpyPlus\" Wyndham \n2025\n\n- Press ESC to close -", 1, 1, 0, c_white, c_white, c_white, c_white, 1); //thats- thats my name on the screen oh god
	draw_line_width(display_get_width()/2.5 - 1, display_get_height()/2 - display_get_height()/12, display_get_width()/1.675, display_get_height()/2 - display_get_height()/12, 8);		//TOP BORDER
	draw_line_width(display_get_width()/2.5 - 1, display_get_height()/2 - display_get_height()/12, display_get_width()/2.5 - 1, display_get_height()/2 + display_get_height()/12, 8);	//LEFT BORDER
	draw_line_width(display_get_width()/1.675, display_get_height()/2 - display_get_height()/12, display_get_width()/1.675, display_get_height()/2 + display_get_height()/12, 8);		//RIGHT BORDER
	draw_line_width(display_get_width()/2.5 - 1, display_get_height()/2 + display_get_height()/12, display_get_width()/1.675, display_get_height()/2 + display_get_height()/12, 8);		//BOT BORDER
}