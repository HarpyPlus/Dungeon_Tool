draw_sprite_stretched(Spr_TTL_BG, -1, 0, 0, display_get_width(), display_get_height())
surface_resize(application_surface, display_get_width(), display_get_height());

ini_open("tool_options.ini")
global.OPT_Fullscreen = ini_read_real("Settings", "Fullscreen", true);
global.OPT_AddedTextureSharpen = ini_read_real("Settings", "SharpTexture", true);
global.OPT_WeirdTime = ini_read_real("Settings", "WeirdTime", false);
ini_close()