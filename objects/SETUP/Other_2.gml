surface_resize(application_surface, display_get_width(), display_get_height());

ini_open("tool_options.ini")
global.OPT_Fullscreen = ini_read_real("Settings", "Fullscreen", true);
global.OPT_AddedTextureSharpen = ini_read_real("Settings", "SharpTexture", true);
global.OPT_WeirdTime = ini_read_real("Settings", "WeirdTime", false);
global.SeenWarning = ini_read_real("Settings", "EpilepsyWarnSeen", false);
//_T_d  = "Default"
//_T_c  = "Cutesy <3"
global.OPT_CurrentTheme = ini_read_string("Settings", "Theme", "_T_d");
ini_close()

global.spriteLoaded = false;
global.spriteLoadedDoor = false;
global.spriteLoadedFloor = false;
global.spritePlayer = Spr_Blank;

global.SpriteLoadColor = c_ltgray;

ini_open("tool_options.ini")
draw_sprite_stretched(asset_get_index("Spr_TTL_BG" + string(global.OPT_CurrentTheme)), -1, 0, 0, display_get_width(), display_get_width())
ini_close()

//Text Input
global.TI_Class = ""