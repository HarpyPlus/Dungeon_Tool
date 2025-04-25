surface_resize(application_surface, display_get_width(), display_get_height());

TXT_Plr.y = TXT_Plr.y - display_get_height()/16
TXT_Enm.y = TXT_Plr.y + display_get_height()/16
TXT_Flr.y = TXT_Enm.y + display_get_height()/16
TXT_Net.y = TXT_Flr.y + display_get_height()/16
TXT_Htu.y = TXT_Net.y + display_get_height()/16
TXT_Ext.y = TXT_Htu.y + display_get_height()/16