/// @description Displays sprite
draw_set_font(fnt_File);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);

switch (room) {
	case (Rm_FlrEditor) :
		if (global.spriteLoadedFloor) {
			//BarShiftXi is however much the Floorshift has moved (Left or Right), and set
			//into a way that makes the floor preview much nicer.
			
			#region Floors and backgrounds
			for (var i = 100; i < ((320*FloorCount)*2); i += 320) {	//6
				draw_sprite_part_ext(global.spriteFloor, -1, 0, 180 * 5, 320, 180, ((i - BarShiftX6) * 3), display_get_height()/2, 3, 3, c_white, 1);
			}
			for (var j = 100; j < ((320*FloorCount)*2); j += 320) {	//5
				draw_sprite_part_ext(global.spriteFloor, -1, 0, 180 * 4, 320, 180, ((j - BarShiftX5) * 3), display_get_height()/2, 3, 3, c_white, 1);
			}
			for (var k = 100; k < ((320*FloorCount)*2); k += 320) {	//4
				draw_sprite_part_ext(global.spriteFloor, -1, 0, 180 * 3, 320, 180, ((k - BarShiftX4) * 3), display_get_height()/2, 3, 3, c_white, 1);
			}
			for (var l = 100; l < ((320*FloorCount)*2); l += 320) {	//3
				draw_sprite_part_ext(global.spriteFloor, -1, 0, 180 * 2, 320, 180, ((l - BarShiftX3) * 3), display_get_height()/2, 3, 3, c_white, 1);
			}
			for (var m = 100; m < ((320*FloorCount)*2); m += 320) {	//2
				draw_sprite_part_ext(global.spriteFloor, -1, 0, 180 * 1, 320, 180, ((m - BarShiftX2) * 3), display_get_height()/2, 3, 3, c_white, 1);
			}
			for (var n = 100; n < (320*FloorCount); n += 320) {		//1
				draw_sprite_part_ext(global.spriteFloor, -1, 0, 180 * 0, 320, 180, ((n - BarShiftX1) * 3), display_get_height()/2, 3, 3, c_white, 1);
			}
			#endregion
		}
		if (global.spriteLoadedDoor) {
			
			//Stairs
			draw_sprite_part_ext(global.spriteDoor, -1,	0, 360, 100, 180, ((0 - BarShiftX1) * 3), display_get_height()/2, 3, 3, c_white, 1);
			draw_sprite_part_ext(global.spriteDoor, -1, 100, 360, 100, 180, ((100 + (320 * FloorCount) - BarShiftX1) * 3), display_get_height()/2, 3, 3, c_white, 1);
			
			//Doors
			draw_sprite_part_ext(global.spriteDoor, -1, 0, DOOR_OPENER, 100, 180, ((0 - BarShiftX1) * 3), display_get_height()/2, 3, 3, c_white, 1);
			draw_sprite_part_ext(global.spriteDoor, -1, 100, DOOR_OPENER, 100, 180, ((100 + (320 * FloorCount) - BarShiftX1) * 3), display_get_height()/2, 3, 3, c_white, 1);
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
