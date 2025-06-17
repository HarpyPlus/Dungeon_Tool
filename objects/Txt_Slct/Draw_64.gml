if (room == Rm_Title) {
	draw_set_font(fnt_Menu);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_text_transformed_color(TXT_Plr.x, TXT_Plr.y, "Player Spritesheet Tester", 1, 1, 0, c_dkgray, c_dkgray, c_dkgray, c_dkgray, 1)
	draw_text_transformed_color(TXT_Enm.x, TXT_Enm.y, "Enemy Spritesheet Tester", 1, 1, 0, c_dkgray, c_dkgray, c_dkgray, c_dkgray, 1)
	draw_text_transformed_color(TXT_Flr.x, TXT_Flr.y, "Floor Spritesheet Tester", FlrTextSiz, FlrTextSiz, 0, FlrTextCol, FlrTextCol, FlrTextCol, FlrTextCol, 1)
	draw_text_transformed_color(TXT_Opt.x, TXT_Opt.y, "Options", OptTextSiz, OptTextSiz, 0, OptTextCol, OptTextCol, OptTextCol, OptTextCol, 1)
	draw_text_transformed_color(TXT_Htu.x, TXT_Htu.y, "How To Use", 1, 1, 0, c_dkgray, c_dkgray, c_dkgray, c_dkgray, 1);
	draw_text_transformed_color(TXT_Ext.x, TXT_Ext.y, "Exit", ExtTextSiz, ExtTextSiz, 0, ExtTextCol, ExtTextCol, ExtTextCol, ExtTextCol, 1)
	//Version number (TOP LEFT)
	draw_set_font(fnt_Regular);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_text(16, 30, "v" + GM_version);
	draw_set_halign(fa_right);
	draw_text(display_get_width() - 16, 30, "FPS:" + string(fps))
	draw_set_halign(fa_left);
}
else if (room == Rm_Options) {
	draw_set_font(fnt_Menu);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	ini_open("tool_options.ini")
	global.OPT_Fullscreen = ini_read_real("Settings", "Fullscreen", global.OPT_Fullscreen)
	ini_close()
	draw_text_transformed_color(TXT_OPT_FULLSCREEN.x, TXT_OPT_FULLSCREEN.y, "Fullscreen: " + (global.OPT_Fullscreen ? "On" : "Off"), Opt_FsTextSiz, Opt_FsTextSiz, 0, Opt_FsTextCol, Opt_FsTextCol, Opt_FsTextCol, Opt_FsTextCol, 1)
	ini_open("tool_options.ini")
	global.OPT_AddedTextureSharpen = ini_read_real("Settings", "SharpTexture", global.OPT_AddedTextureSharpen)
	ini_close()
	draw_text_transformed_color(TXT_OPT_TXTRSHARP.x, TXT_OPT_TXTRSHARP.y, "Imported Texture Sharpen: " + (global.OPT_AddedTextureSharpen ? "On" : "Off"), Opt_TsTextSiz, Opt_TsTextSiz, 0, Opt_TsTextCol, Opt_TsTextCol, Opt_TsTextCol, Opt_TsTextCol, 1)
	ini_open("tool_options.ini")
	global.OPT_WeirdTime = ini_read_real("Settings", "WeirdTime", global.OPT_WeirdTime)
	ini_close()
	draw_text_transformed_color(TXT_OPT_TIME.x, TXT_OPT_TIME.y, "Time Display: " + (global.OPT_WeirdTime ? "24 Hour" : "AM / PM"), Opt_WtTextSiz, Opt_WtTextSiz, 0, Opt_WtTextCol, Opt_WtTextCol, Opt_WtTextCol, Opt_WtTextCol, 1)
	ini_open("tool_options.ini")
	global.OPT_Parallax = ini_read_real("Settings", "Parallax", global.OPT_Parallax)
	ini_close()
	draw_text_transformed_color(TXT_OPT_PAR.x, TXT_OPT_PAR.y, "Parallax: " + (global.OPT_Parallax ? "On" : "Off"), Opt_PaTextSiz, Opt_PaTextSiz, 0, Opt_PaTextCol, Opt_PaTextCol, Opt_PaTextCol, Opt_PaTextCol, 1)
	ini_open("tool_options.ini")
	global.OPT_CurrentTheme = ini_read_string("Settings", "Theme", global.OPT_CurrentTheme)
	ini_close()
	draw_text_transformed_color(TXT_OPT_THEME.x, TXT_OPT_THEME.y, "Theme: " + string(global.OPT_CurrentThemeString), Opt_ThTextSiz, Opt_ThTextSiz, 0, Opt_ThTextCol, Opt_ThTextCol, Opt_ThTextCol, Opt_ThTextCol, 1);
	draw_text_transformed_color(TXT_OPT_EXIT.x, TXT_OPT_EXIT.y, "Back to Menu", Opt_ExTextSiz, Opt_ExTextSiz, 0, Opt_ExTextCol, Opt_ExTextCol, Opt_ExTextCol, Opt_ExTextCol, 1)

	//Version number (TOP LEFT)
	draw_set_font(fnt_Regular);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_text_color(16, 30, "v" + GM_version, c_white, c_white, c_white, c_white, 1);
}