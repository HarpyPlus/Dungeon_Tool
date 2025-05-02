draw_set_font(fnt_File);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);

if (room == Rm_PlrEditor) {
	draw_rectangle_color(Obj_Preview.x - 50, -display_get_height() + 1150, Obj_Preview.x + 275, display_get_height() - 20, make_color_rgb(255, 181, 0), make_color_rgb(255, 181, 0), make_color_rgb(255, 181, 0), make_color_rgb(255, 181, 0), false); //yellow
	draw_rectangle_color(Obj_Preview.x - 46, -display_get_height() + 1154, Obj_Preview.x + 271, display_get_height() - 26, make_color_rgb(25, 33, 66), make_color_rgb(25, 33, 66), make_color_rgb(25, 33, 66), make_color_rgb(25, 33, 66), false); //blue
	draw_sprite_ext(Spr_WHITE, 0, Obj_Preview.x + (32 * 0), Obj_Preview.y + (32 * 0), 14, 14, 0, make_color_rgb(20, 20, 20), 1); //pbg
}
if (room == Rm_FlrEditor) {
	draw_rectangle_color(0, display_get_height()/2 - display_get_height()/20 + 22, display_get_width(), display_get_height() - 20, make_color_rgb(255, 181, 0), make_color_rgb(255, 181, 0), make_color_rgb(255, 181, 0), make_color_rgb(255, 181, 0), false) //yellow
	draw_rectangle_color(0, display_get_height()/2 - display_get_height()/20 + 28, display_get_width(), display_get_height() - 20, make_color_rgb(25, 33, 66), make_color_rgb(25, 33, 66), make_color_rgb(25, 33, 66), make_color_rgb(25, 33, 66), false) //Blue
	draw_sprite_ext(Spr_WHITE, 0, 0, display_get_height()/2, 700, 70, 0, make_color_rgb(20, 20, 20), 1); //pbg
	for (var i = 2; i < 19; i++) {
		draw_sprite_ext(Spr_Bar, 1, (display_get_width()/10) - (display_get_width()/10) + (96 * i), display_get_height()/2 - display_get_height()/15, 1.5, 1.5, 0, c_white, 1);
	}
	//Left StageShiftBar
	draw_sprite_ext(Spr_Bar, 0, (display_get_width()/10) - (display_get_width()/20), display_get_height()/2 - display_get_height()/15, 1.5, 1.5, 0, c_white, 1);
	//Right StageShiftBar
	draw_sprite_ext(Spr_Bar, 2, (display_get_width()/10) - (display_get_width()/10) + (96 * 19), display_get_height()/2 - display_get_height()/15, 1.5, 1.5, 0, c_white, 1);
	draw_sprite_ext(Spr_Bar_Grab, -1, BarGrabStageShift, display_get_height()/2 - display_get_height()/15, 1.5, 1.5, 0, c_white, 1)
	draw_rectangle(BarGrabStageShift - 44, (display_get_height()/2 - display_get_height()/15) - 24, BarGrabStageShift + 44, (display_get_height()/2 - display_get_height()/15) + 24, true)
}