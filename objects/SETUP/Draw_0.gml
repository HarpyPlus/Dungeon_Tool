//change the background to this sprite according to the current theme
draw_sprite_stretched(asset_get_index("Spr_TTL_BG" + string(global.OPT_CurrentTheme)), -1, 0, 0, display_get_width(), display_get_width());
surface_resize(application_surface, display_get_width(), display_get_height());