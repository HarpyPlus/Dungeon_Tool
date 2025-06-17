//Logo
if (global.OPT_CurrentTheme == "_T_d") {
	draw_rectangle_color(Obj_funnysilly.bbox_left - 6, Obj_funnysilly.bbox_top - 8, Obj_funnysilly.bbox_right + 6, Obj_funnysilly.bbox_bottom + 8, c_black, c_black, c_black, c_black, false);
}
else if (global.OPT_CurrentTheme == "_T_c") {
	draw_rectangle_color(Obj_funnysilly.bbox_left - 6, Obj_funnysilly.bbox_top - 8, Obj_funnysilly.bbox_right + 6, Obj_funnysilly.bbox_bottom + 8, make_color_rgb(255,170,215), make_color_rgb(255,211,234), make_color_rgb(255,170,215), make_color_rgb(255,211,234), false);
}
draw_sprite(asset_get_index(("funny" + string(funnyNumber) + "_T_d")), image_index, x, y)
draw_set_font(fnt_Regular);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_text_transformed_color(Obj_funnysilly.x, Obj_funnysilly.bbox_bottom + 40, funnyString, 1, 1, 0, c_ltgray, c_ltgray, c_ltgray, c_ltgray, 1)