ini_open("tool_options.ini")
global.OPT_Fullscreen = ini_read_real("Settings", "Fullscreen", global.OPT_Fullscreen)
ini_close()
window_set_fullscreen(global.OPT_Fullscreen)

//The checks to style are over in...
//SETUP - Line 10, Step event
if (global.OPT_CurrentTheme == "_T_d") {
	global.OPT_CurrentThemeString = "Default";
}
else if (global.OPT_CurrentTheme == "_T_c") {
	global.OPT_CurrentThemeString = "Cutesy <3 [Unfinished!]";
}

//unfinished, just the bones for something rn
if (room == Rm_Testing) {
	switch (global.WhatAmITesting) {
		case ("Floor") :
		case ("Player") :
	}
	if keyboard_check_pressed(vk_escape) {
		room_goto(Rm_FlrEditor)
	}
}

ini_open("tool_options.ini")
global.SeenWarning = ini_read_real("Settings", "EpilepsyWarnSeen", false);
if ((!global.SeenWarning) && (room == Rm_Title)) {
	room = Rm_Warning;
}
ini_close();