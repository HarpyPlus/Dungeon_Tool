if (room == Rm_Title) {
	if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), TXT_Plr.bbox_left - 170, TXT_Plr.bbox_top + 10, TXT_Plr.bbox_right + 170, TXT_Plr.bbox_bottom + 40)) {
		Obj_Cursor.image_index = 1;
		switch (global.OPT_CurrentTheme) {
			case ("_T_d") :
				PlrTextCol = c_yellow;
				break;
			case ("_T_c") :
				PlrTextCol = make_color_rgb(255, 170, 215);
		}
		if (PlrTextSiz < 1.03) { PlrTextSiz += 0.015; }
		if (mouse_check_button(mb_left)) {
			//room = Rm_PlrEditor;
		}
	}
	else {
		PlrTextCol = c_white;
		if (PlrTextSiz > 1) { PlrTextSiz -= 0.015; }
	}
	
	if point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), TXT_Enm.bbox_left - 170, TXT_Enm.bbox_top + 10, TXT_Enm.bbox_right + 170, TXT_Enm.bbox_bottom + 40) {
		Obj_Cursor.image_index = 1;
		switch (global.OPT_CurrentTheme) {
			case ("_T_d") :
				EnmTextCol = c_yellow;
				break;
			case ("_T_c") :
				EnmTextCol = make_color_rgb(255, 170, 215);
		}
		if (EnmTextSiz < 1.03) { EnmTextSiz += 0.015; }
		if (mouse_check_button(mb_left)) {
			//room = Rm_EnmEditor;
		}
	}
	else {
		EnmTextCol = c_white;
		if (EnmTextSiz > 1) { EnmTextSiz -= 0.015; }
	}
	
	if point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),TXT_Flr.bbox_left - 160, TXT_Flr.bbox_top, TXT_Flr.bbox_right + 160, TXT_Flr.bbox_bottom + 40) {
		Obj_Cursor.image_index = 1;
		switch (global.OPT_CurrentTheme) {
			case ("_T_d") :
				FlrTextCol = c_yellow;
				break;
			case ("_T_c") :
				FlrTextCol = make_color_rgb(255, 170, 215);
		}
		if (FlrTextSiz < 1.03) { FlrTextSiz += 0.015; }
		if (mouse_check_button(mb_left)) {
			room = Rm_FlrEditor;
		}
	}
	else {
		FlrTextCol = c_white;
		if (FlrTextSiz > 1) { FlrTextSiz -= 0.015; }
	}
	
	if point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), TXT_Opt.bbox_left - 230, TXT_Opt.bbox_top, TXT_Opt.bbox_right + 230, TXT_Opt.bbox_bottom + 40) {
		Obj_Cursor.image_index = 1;
		switch (global.OPT_CurrentTheme) {
			case ("_T_d") :
				OptTextCol = c_yellow;
				break;
			case ("_T_c") :
				OptTextCol = make_color_rgb(255, 170, 215);
		}
		if (OptTextSiz < 1.03) { OptTextSiz += 0.015; }
		if (mouse_check_button(mb_left)) {
			room = Rm_Options;
		}
	}
	else {
		OptTextCol = c_white;
		if (OptTextSiz > 1) { OptTextSiz -= 0.015; }
	}
	
	if point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), TXT_Htu.bbox_left - 100, TXT_Htu.bbox_top, TXT_Htu.bbox_right + 100, TXT_Htu.bbox_bottom + 40) {
		Obj_Cursor.image_index = 1;
		switch (global.OPT_CurrentTheme) {
			case ("_T_d") :
				HtuTextCol = c_yellow;
				break;
			case ("_T_c") :
				HtuTextCol = make_color_rgb(255, 170, 215);
		}
		if (HtuTextSiz < 1.03) { HtuTextSiz += 0.015; }
		if (mouse_check_button(mb_left)) {
			global.GoingNextRoom = true;
			global.NextRoom = "DUMBASS";
		}
	}
	else {
		HtuTextCol = c_white;
		if (HtuTextSiz > 1) { HtuTextSiz -= 0.015; }
	}
	
	if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), TXT_Ext.bbox_left - 170, TXT_Ext.bbox_top + 10, TXT_Ext.bbox_right + 170, TXT_Ext.bbox_bottom + 40)) {
		Obj_Cursor.image_index = 1;
		ExtTextCol = c_red;
		if (ExtTextSiz < 1.03) { ExtTextSiz += 0.015; }
		if (mouse_check_button(mb_left)) {
			//hope you saved everything! havent made a check that works yet
			game_end()
		}
	}
	else {
		ExtTextCol = c_white;
		if (ExtTextSiz > 1) { ExtTextSiz -= 0.015; }
	}
}
else if (room == Rm_Options) {
	if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), TXT_OPT_FULLSCREEN.bbox_left - 170, TXT_OPT_FULLSCREEN.bbox_top + 10, TXT_OPT_FULLSCREEN.bbox_right + 170, TXT_OPT_FULLSCREEN.bbox_bottom + 40)) {
		Obj_Cursor.image_index = 1;
		switch (global.OPT_CurrentTheme) {
			case ("_T_d") :
				Opt_FsTextCol = c_yellow;
				break;
			case ("_T_c") :
				Opt_FsTextCol = make_color_rgb(255, 170, 215);
		}
		if (Opt_FsTextSiz < 1.03) { Opt_FsTextSiz += 0.015; }
		if (mouse_check_button(mb_left)) {
			Opt_FsTextCol = c_silver;
			if (mouse_check_button_pressed(mb_left)) {
				ini_open("tool_options.ini");
				ini_write_real("Settings", "Fullscreen", !global.OPT_Fullscreen);
				ini_close();
			}
		}
	}
	else {
		Opt_FsTextCol = c_white;
		if (Opt_FsTextSiz > 1) { Opt_FsTextSiz -= 0.015; }
	}
	
	if point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), TXT_OPT_TXTRSHARP.bbox_left - 170, TXT_OPT_TXTRSHARP.bbox_top + 10, TXT_OPT_TXTRSHARP.bbox_right + 170, TXT_OPT_TXTRSHARP.bbox_bottom + 40) {
		Obj_Cursor.image_index = 1;
		switch (global.OPT_CurrentTheme) {
			case ("_T_d") :
				Opt_TsTextCol = c_yellow;
				break;
			case ("_T_c") :
				Opt_TsTextCol = make_color_rgb(255, 170, 215);
		}
		if (Opt_TsTextSiz < 1.03) { Opt_TsTextSiz += 0.015; }
		if (mouse_check_button(mb_left)) {
			Opt_TsTextCol = c_silver;
			if (mouse_check_button_pressed(mb_left)) {
				ini_open("tool_options.ini");
				ini_write_real("Settings", "SharpTexture", !global.OPT_AddedTextureSharpen);
				ini_close();
			}
		}
	}
	else {
		Opt_TsTextCol = c_white;
		if (Opt_TsTextSiz > 1) { Opt_TsTextSiz -= 0.015; }
	}
	
	if point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), TXT_OPT_TIME.bbox_left - 160, TXT_OPT_TIME.bbox_top, TXT_OPT_TIME.bbox_right + 160, TXT_OPT_TIME.bbox_bottom + 40) {
		Obj_Cursor.image_index = 1;
		switch (global.OPT_CurrentTheme) {
			case ("_T_d") :
				Opt_WtTextCol = c_yellow;
				break;
			case ("_T_c") :
				Opt_WtTextCol = make_color_rgb(255, 170, 215);
		}
		if (Opt_WtTextSiz < 1.03) { Opt_WtTextSiz += 0.015; }
		if (mouse_check_button(mb_left)) {
			Opt_WtTextCol = c_silver;
			if (mouse_check_button_pressed(mb_left)) {
				ini_open("tool_options.ini");
				ini_write_real("Settings", "WeirdTime", !global.OPT_WeirdTime);
				ini_close();
			}
		}
	}
	else {
		Opt_WtTextCol = c_white;
		if (Opt_WtTextSiz > 1) { Opt_WtTextSiz -= 0.015; }
	}
	
	if point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), TXT_OPT_PAR.bbox_left - 160, TXT_OPT_PAR.bbox_top, TXT_OPT_PAR.bbox_right + 160, TXT_OPT_PAR.bbox_bottom + 40) {
		Obj_Cursor.image_index = 1;
		switch (global.OPT_CurrentTheme) {
			case ("_T_d") :
				Opt_PaTextCol = c_yellow;
				break;
			case ("_T_c") :
				Opt_PaTextCol = make_color_rgb(255, 170, 215);
		}
		if (Opt_PaTextSiz < 1.03) { Opt_PaTextSiz += 0.015; }
		if (mouse_check_button(mb_left)) {
			Opt_PaTextCol = c_silver;
			if (mouse_check_button_pressed(mb_left)) {
				ini_open("tool_options.ini");
				ini_write_real("Settings", "Parallax", !global.OPT_Parallax);
				ini_close();
			}
		}
	}
	else {
		Opt_PaTextCol = c_white;
		if (Opt_PaTextSiz > 1) { Opt_PaTextSiz -= 0.015; }
	}	

	//This changes the STYLE of the game, but not the text. 
	//The checks to text are over in...
	//SETUP - Line 10, Step event
	if point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), TXT_OPT_THEME.bbox_left - 160, TXT_OPT_THEME.bbox_top, TXT_OPT_THEME.bbox_right + 160, TXT_OPT_THEME.bbox_bottom + 40) {
		Obj_Cursor.image_index = 1;
		switch (global.OPT_CurrentTheme) {
			case ("_T_d") :
				Opt_ThTextCol = c_yellow;
				break;
			case ("_T_c") :
				Opt_ThTextCol = make_color_rgb(255, 170, 215);
				break;
		}
		if (Opt_ThTextSiz < 1.03) { Opt_ThTextSiz += 0.015; }
		if (mouse_check_button(mb_left)) {
			Opt_ThTextCol = c_silver;
			if (mouse_check_button_pressed(mb_left)) {
				switch (global.OPT_CurrentTheme) {
					case ("_T_d") :
						global.OPT_CurrentTheme = "_T_c";
						break;
					case ("_T_c") :
						global.OPT_CurrentTheme = "_T_d";
						break;
				}
				ini_open("tool_options.ini");
				ini_write_string("Settings", "Theme", global.OPT_CurrentTheme);
				ini_close();
			}
		}
	}
	else {
		Opt_ThTextCol = c_white;
		if (Opt_ThTextSiz > 1) { Opt_ThTextSiz -= 0.015; }
	}

	if point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), TXT_OPT_EXIT.bbox_left - 230, TXT_OPT_EXIT.bbox_top, TXT_OPT_EXIT.bbox_right + 230, TXT_OPT_EXIT.bbox_bottom + 40) {
		Obj_Cursor.image_index = 1;
		switch (global.OPT_CurrentTheme) {
			case ("_T_d") :
				Opt_ExTextCol = c_yellow;
				break;
			case ("_T_c") :
				Opt_ExTextCol = make_color_rgb(255, 170, 215);
				break;
		}
		if (Opt_ExTextSiz < 1.03) { Opt_ExTextSiz += 0.015; }
		if (mouse_check_button(mb_left)) {
			room = Rm_Title;
		}
	}
	else {
		Opt_ExTextCol = c_white;
		if (Opt_ExTextSiz > 1) { Opt_ExTextSiz -= 0.015; }
	}
}