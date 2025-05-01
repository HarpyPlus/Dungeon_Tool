if (room == Rm_Title) {
	if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), TXT_Plr.bbox_left - 170, TXT_Plr.bbox_top + 10, TXT_Plr.bbox_right + 170, TXT_Plr.bbox_bottom + 40)) {
		PlrTextCol = c_yellow;
		if (PlrTextSiz < 1.03) { PlrTextSiz += 0.015; }
		if (mouse_check_button(mb_left)) {
			room = Rm_PlrEditor;
		}
	}
	else {
		PlrTextCol = c_white;
		if (PlrTextSiz > 1) { PlrTextSiz -= 0.015; }
	}
	
	if point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), TXT_Enm.bbox_left - 170, TXT_Enm.bbox_top + 10, TXT_Enm.bbox_right + 170, TXT_Enm.bbox_bottom + 40) {
		EnmTextCol = c_yellow;
		if (EnmTextSiz < 1.03) { EnmTextSiz += 0.015; }
		if (mouse_check_button(mb_left)) {
			room = Rm_EnmEditor;
		}
	}
	else {
		EnmTextCol = c_white;
		if (EnmTextSiz > 1) { EnmTextSiz -= 0.015; }
	}
	
	if point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),TXT_Flr.bbox_left - 160, TXT_Flr.bbox_top, TXT_Flr.bbox_right + 160, TXT_Flr.bbox_bottom + 40) {
		FlrTextCol = c_yellow;
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
		OptTextCol = c_yellow;
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
		HtuTextCol = c_yellow;
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
		ExtTextCol = c_yellow;
		if (ExtTextSiz < 1.03) { ExtTextSiz += 0.015; }
		if (mouse_check_button(mb_left)) {
			game_end()
		}
	}
	else {
		ExtTextCol = c_white;
		if (ExtTextSiz > 1) { ExtTextSiz -= 0.015; }
	}
}
else if (room == Rm_Options) {
	cooldowntimer--
	if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), TXT_OPT_FULLSCREEN.bbox_left - 170, TXT_OPT_FULLSCREEN.bbox_top + 10, TXT_OPT_FULLSCREEN.bbox_right + 170, TXT_OPT_FULLSCREEN.bbox_bottom + 40)) {
		Opt_FsTextCol = c_yellow;
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
		Opt_TsTextCol = c_yellow;
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
		Opt_WtTextCol = c_yellow;
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
	
	if point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), TXT_OPT_EXIT.bbox_left - 230, TXT_OPT_EXIT.bbox_top, TXT_OPT_EXIT.bbox_right + 230, TXT_OPT_EXIT.bbox_bottom + 40) {
		Opt_ExTextCol = c_yellow;
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