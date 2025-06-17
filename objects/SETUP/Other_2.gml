surface_resize(application_surface, display_get_width(), display_get_height());

ini_open("tool_options.ini");
global.OPT_Fullscreen = ini_read_real("Settings", "Fullscreen", true);
global.OPT_AddedTextureSharpen = ini_read_real("Settings", "SharpTexture", true);
global.OPT_WeirdTime = ini_read_real("Settings", "WeirdTime", false);
global.OPT_Parallax = ini_read_real("Settings", "Parallax", true);
//_T_d  = "Default"
//_T_c  = "Cutesy <3"
global.OPT_CurrentTheme = ini_read_string("Settings", "Theme", "_T_d");
ini_close();

global.spriteLoaded = false;
global.spriteLoadedDoor = false;
global.spriteLoadedFloor = false;
global.spritePlayer = Spr_Blank;
global.spriteDoor = Spr_Blank;
global.spriteFloor = Spr_Blank;
global.spriteDust = Spr_Blank;
global.dust_sprite = "No asset chosen";

global.FloorLayer[1] = true;
global.FloorLayer[2] = true;
global.FloorLayer[3] = true;
global.FloorLayer[4] = true;
global.FloorLayer[5] = true;
global.FloorLayer[6] = true;

global.DustR = 255;
global.DustG = 255;
global.DustB = 255;

global.DoorIconFrame = 0;
global.DOOR_OPENER = 0;

global.TopBarBounds = false;
global.SpriteLoadColor = c_ltgray;
global.FloorSelected = "LAYER0";

window_set_cursor(cr_none);
Obj_Cursor.image_index = 0;

ini_open("tool_options.ini");
draw_sprite_stretched(asset_get_index("Spr_TTL_BG" + string(global.OPT_CurrentTheme)), -1, 0, 0, display_get_width(), display_get_width());
ini_close();

//Text Input
global.TI_Class = "";
global.TI_Floor = "";
global.TI_Author = "";