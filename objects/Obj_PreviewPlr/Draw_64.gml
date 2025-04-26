/// @description Displays sprite
draw_set_font(fnt_File);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
if (global.spriteLoaded) {
	if (sprite_exists(Obj_PreviewPlr.sprite_index)) {
		switch (ScaleDown) {
			case true :
				draw_sprite_part_ext(Obj_PreviewPlr.sprite_index, Obj_PreviewPlr.image_index, 0, 0, 16, 16, x + 56, y + 56, (14 / 2), (14 / 2), c_white, 1);
				draw_text_transformed_color(x, y - 4, "[32x32]", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
				break;
			default :
				draw_sprite_part_ext(Obj_PreviewPlr.sprite_index, Obj_PreviewPlr.image_index, 0, 0, 16, 16, x, y, (14 / 1), (14 / 1), c_white, 1);
				draw_text_transformed_color(x, y - 4, "[16x16]", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
				break;
		}
	}
}