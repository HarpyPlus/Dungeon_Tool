draw_set_font(fnt_Fil);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);

draw_rectangle_color(0, display_get_height()/2, display_get_width(), display_get_height() - 20, make_color_rgb(255, 181, 0), make_color_rgb(255, 181, 0), make_color_rgb(255, 181, 0), make_color_rgb(255, 181, 0), false) //yellow
//draw_rectangle_color(Obj_PreviewFlr.x - 46, -display_get_height() + 1154, Obj_Previewlr.x + 271, display_get_height() - 26, make_color_rgb(25, 33, 66), make_color_rgb(25, 33, 66), make_color_rgb(25, 33, 66), make_color_rgb(25, 33, 66), false) //blue
draw_sprite_ext(Spr_WHITE, 0, 0, ((display_get_height()/2)), 700, 70, 0, make_color_rgb(20, 20, 20), 1); //pbg