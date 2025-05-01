ini_open("tool_options.ini")
global.OPT_Fullscreen = ini_read_real("Settings", "Fullscreen", global.OPT_Fullscreen)
ini_close()
window_set_fullscreen(global.OPT_Fullscreen)