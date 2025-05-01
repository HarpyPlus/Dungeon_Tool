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
	draw_text_transformed_color(TXT_Opt.x, TXT_Opt.y, "Options", OptTextSiz, OptTextSiz, 0, OptTextCol, OptTextCol, OptTextCol, OptTextCol, 1)
	draw_set_font(fnt_Menu);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_text_transformed_color(TXT_Htu.x, TXT_Htu.y, "How To Use", 1, 1, 0, c_dkgray, c_dkgray, c_dkgray, c_dkgray, 1)
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_text_transformed_color(TXT_Ext.x, TXT_Ext.y, "Exit", ExtTextSiz, ExtTextSiz, 0, ExtTextCol, ExtTextCol, ExtTextCol, ExtTextCol, 1)
	
	//Logo
	draw_sprite(asset_get_index("funny" + string(funnyNumber)), image_index, display_get_width()/2 - display_get_width()/4, display_get_height() - display_get_height()/2)
	draw_set_font(fnt_Regular);
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	//draw_text_transformed_color((asset_get_index("funny" + string(funnyNumber)).sprite_width/2), (asset_get_index("funny" + string(funnyNumber)).bbox_bottom + 10), funnyString, 1, 1, 0, c_dkgray, c_dkgray, c_dkgray, c_dkgray, 1)

	//Version number (TOP LEFT)
	draw_set_font(fnt_Regular);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_text_color(Txt_Copyright.x, 30, "v" + GM_version, c_white, c_white, c_white, c_white, 1);
}
else if (room == Rm_Options) {
	draw_set_font(fnt_Menu);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	ini_open("tool_options.ini")
	global.OPT_Fullscreen = ini_read_real("Settings", "Fullscreen", global.OPT_Fullscreen)
	ini_close()
	draw_text_transformed_color(TXT_OPT_FULLSCREEN.x, TXT_OPT_FULLSCREEN.y, "Fullscreen: " + (global.OPT_Fullscreen ? "On" : "Off"), Opt_FsTextSiz, Opt_FsTextSiz, 0, Opt_FsTextCol, Opt_FsTextCol, Opt_FsTextCol, Opt_FsTextCol, 1)
	draw_set_font(fnt_Menu);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	ini_open("tool_options.ini")
	global.OPT_AddedTextureSharpen = ini_read_real("Settings", "SharpTexture", global.OPT_AddedTextureSharpen)
	ini_close()
	draw_text_transformed_color(TXT_OPT_TXTRSHARP.x, TXT_OPT_TXTRSHARP.y, "Imported Texture Sharpen: " + (global.OPT_AddedTextureSharpen ? "On" : "Off"), Opt_TsTextSiz, Opt_TsTextSiz, 0, Opt_TsTextCol, Opt_TsTextCol, Opt_TsTextCol, Opt_TsTextCol, 1)
	draw_set_font(fnt_Menu);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	ini_open("tool_options.ini")
	global.OPT_WeirdTime = ini_read_real("Settings", "WeirdTime", global.OPT_WeirdTime)
	ini_close()
	draw_text_transformed_color(TXT_OPT_TIME.x, TXT_OPT_TIME.y, "Time Display: " + (global.OPT_WeirdTime ? "24 Hour" : "AM / PM"), Opt_WtTextSiz, Opt_WtTextSiz, 0, Opt_WtTextCol, Opt_WtTextCol, Opt_WtTextCol, Opt_WtTextCol, 1)
	draw_set_font(fnt_Menu);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_text_transformed_color(TXT_Opt.x, TXT_Opt.y, "Back to Menu", Opt_ExTextSiz, Opt_ExTextSiz, 0, Opt_ExTextCol, Opt_ExTextCol, Opt_ExTextCol, Opt_ExTextCol, 1)

	//Version number (TOP LEFT)
	draw_set_font(fnt_Regular);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_text_color(Txt_Copyright.x, 30, "v" + GM_version, c_white, c_white, c_white, c_white, 1);
}