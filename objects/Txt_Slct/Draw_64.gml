/// @description Insert description here
// You can write your code in this editor
if (room == Rm_Title) {
	draw_set_font(fnt_Menu);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_text_transformed_color(TXT_Plr.x, TXT_Plr.y, "Player Spritesheet Tester", PlrTextSiz, PlrTextSiz, 0, PlrTextCol, PlrTextCol, PlrTextCol, PlrTextCol, 1)
	draw_set_font(fnt_Menu);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_text_transformed_color(TXT_Enm.x, TXT_Enm.y, "Enemy Spritesheet Tester", 1, 1, 0, c_dkgray, c_dkgray, c_dkgray, c_dkgray, 1)
	draw_set_font(fnt_Menu);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_text_transformed_color(TXT_Flr.x, TXT_Flr.y, "Floor Spritesheet Tester", FlrTextSiz, FlrTextSiz, 0, FlrTextCol, FlrTextCol, FlrTextCol, FlrTextCol, 1)
	draw_set_font(fnt_Menu);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_text_transformed_color(TXT_Net.x, TXT_Net.y, "Options", 1, 1, 0, c_dkgray, c_dkgray, c_dkgray, c_dkgray, 1)
	draw_set_font(fnt_Menu);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_text_transformed_color(TXT_Htu.x, TXT_Htu.y, "How To Use", 1, 1, 0, c_dkgray, c_dkgray, c_dkgray, c_dkgray, 1)
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_text_transformed_color(TXT_Ext.x, TXT_Ext.y, "Exit", ExtTextSiz, ExtTextSiz, 0, ExtTextCol, ExtTextCol, ExtTextCol, ExtTextCol, 1)

	//Logo
	draw_sprite(asset_get_index("funny" + string(funnyNumber)), image_index, window_get_width()/4 + -window_get_width()/10, window_get_height()/3)
	draw_set_font(fnt_Regular);
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	draw_text_transformed_color(window_get_width()/4 + 10, window_get_height()/3 + window_get_height()/2 - window_get_height()/10, funnyString, 1, 1, 0, c_dkgray, c_dkgray, c_dkgray, c_dkgray, 1)

	//Version number (TOP LEFT)
	draw_set_font(fnt_Regular);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_text_color(Txt_Copyright.x, 30, "v" + versionNumber, c_white, c_white, c_white, c_white, 1);
}