draw_set_font(fnt_File);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);

switch (room) {
	//Will work more on the player editor (and breaking it down as its seriously messy), please wait ^^;
	//Currently busy chipping away at the floor editor - HarpyPlus, 5-10-25
	#region Player Editor
	case (Rm_PlrEditor) :
		//Backgrounds
		switch (global.OPT_CurrentTheme) {
			case ("_T_d") :
				//bg
				draw_rectangle_color(-2, -2, display_get_width(), display_get_height(), make_color_rgb(25, 33, 66), make_color_rgb(25, 33, 66), make_color_rgb(25, 33, 66), make_color_rgb(25, 33, 66), false)
				//Main
				draw_rectangle_color(16, 42 + 16, display_get_width() - 16, display_get_height() - 10, make_color_rgb(29, 62, 99), make_color_rgb(29, 62, 99), make_color_rgb(29, 62, 99), make_color_rgb(29, 62, 99), false)
				break;
			case ("_T_c") : 			
				//bg
				draw_rectangle_color(-2, -2, display_get_width(), display_get_height(), make_color_rgb(115, 62, 117), make_color_rgb(115, 62, 117), make_color_rgb(115, 62, 117), make_color_rgb(115, 62, 117), false)
				//Main
				draw_rectangle_color(16, 42 + 16, display_get_width() - 16, display_get_height() - 10, make_color_rgb(255,170,215), make_color_rgb(255,170,215), make_color_rgb(255,170,215), make_color_rgb(255,170,215), false)
				break;
		}
		
		draw_line_width(16, 42 + 16, display_get_width() - 16, 42 + 16, 6)											//TOP BORDER
		draw_line_width(13, 42 + 20, 13, display_get_height() - 12, 6)												//LEFT BORDER
		draw_line_width(16, display_get_height() - 8, display_get_width() - 16, display_get_height() - 8, 6)		//BOTTOM BORDER
		draw_line_width(display_get_width() - 13, 42 + 20, display_get_width() - 13, display_get_height() - 12, 6)	//RIGHT BORDER
		
		//class displays box
		draw_rectangle_color(Obj_Preview.x - 275, -display_get_height() + 1150, Obj_Preview.x + 275, display_get_height() - 20, make_color_rgb(255, 181, 0), make_color_rgb(255, 181, 0), make_color_rgb(255, 181, 0), make_color_rgb(255, 181, 0), false); //yellow
		draw_rectangle_color(Obj_Preview.x - 271, -display_get_height() + 1154, Obj_Preview.x + 271, display_get_height() - 26, make_color_rgb(25, 33, 66), make_color_rgb(25, 33, 66), make_color_rgb(25, 33, 66), make_color_rgb(25, 33, 66), false); //blue
		//class displays
		draw_sprite_ext(Spr_WHITE, 0, Obj_Preview.x + (32 * -6.25), Obj_Preview.y, 25, 25, 0, make_color_rgb(75, 75, 75), 1); //player bg
		draw_sprite_ext(Spr_WHITE, 0, Obj_Preview.x + (32 * -6.25), Obj_Preview.y + (32 * 14.75), 25, 25, 0, make_color_rgb(75, 75, 75), 1); //portrait bg
		
		
		//Mid DragBar
		for (var i = 1; i < 9; i++) {
			draw_sprite_ext(asset_get_index("Spr_Bar" + global.OPT_CurrentTheme + "_NS"), 1, (display_get_width()/2) + (display_get_width()/6.5), (display_get_height()/2 - display_get_height()/3 - 30) + (90 * i), 1.5, 1.5, 90, c_white, 1);
		}
		//Left DragBar
		draw_sprite_ext(asset_get_index("Spr_Bar" + global.OPT_CurrentTheme + "_NS"), 2, (display_get_width()/2) + (display_get_width()/6.5), (display_get_height()/2 - display_get_height()/3 - 30), 1.5, 1.5, 90, c_white, 1);
		//Right DragBar
		draw_sprite_ext(asset_get_index("Spr_Bar" + global.OPT_CurrentTheme + "_NS"), 0, (display_get_width()/2) + (display_get_width()/6.5), (display_get_height()/2 - display_get_height()/3 - 30) + (90 * 9), 1.5, 1.5, 90, c_white, 1);

		//-Text boxes-
		//Flip the bar sprites over so they dont look so much like 
		//bars btw. gives them more of a deeper look, kinda sunk into the menu

		draw_set_valign(fa_middle);
		draw_set_font(fnt_File);
		
		//Class Descriptor
		draw_text_transformed_color(display_get_width()/11.25, display_get_height()/8, "- Class Name -", 1.5, 1.5, 0, c_white, c_white, c_white, c_white, 1);
		
		//Class input box
		draw_sprite_ext(asset_get_index("Spr_Bar" + global.OPT_CurrentTheme), 0, display_get_width()/5, display_get_height()/8, 1.5, -1.5, 0, c_white, 1);
		for (var i = 1; i < 7; i++) {
			draw_sprite_ext(asset_get_index("Spr_Bar" + global.OPT_CurrentTheme), 1, (display_get_width()/5) + (96 * i), display_get_height()/8, 1.5, -1.5, 0, c_white, 1);
		}
		draw_sprite_ext(asset_get_index("Spr_Bar" + global.OPT_CurrentTheme), 2, (display_get_width()/5) + (96 * 7), display_get_height()/8, 1.5, -1.5, 0, c_white, 1);
		
		//Class input - not box
		draw_set_halign(fa_left);
		draw_set_valign(fa_middle);
		draw_set_font(fnt_File);
		draw_text_transformed_color(display_get_width()/5.5, display_get_height()/8, global.TI_Class + Blink, 1.5, 1.5, 0, c_white, c_white, c_white, c_white, 1)
		break;
	#endregion
	#region Floor Editor
	case (Rm_FlrEditor) :
		//Backgrounds
		switch (global.OPT_CurrentTheme) {
			case ("_T_d") :
				//bg
				draw_rectangle_color(-2, -2, display_get_width(), display_get_height(), make_color_rgb(25, 33, 66), make_color_rgb(25, 33, 66), make_color_rgb(25, 33, 66), make_color_rgb(25, 33, 66), false)
				//Main
				draw_rectangle_color(16, 42 + 16, display_get_width() - 16, display_get_height() - 10, make_color_rgb(29, 62, 99), make_color_rgb(29, 62, 99), make_color_rgb(29, 62, 99), make_color_rgb(29, 62, 99), false)
				break;
			case ("_T_c") :
				//bg
				draw_rectangle_color(-2, -2, display_get_width(), display_get_height(), make_color_rgb(115, 62, 117), make_color_rgb(115, 62, 117), make_color_rgb(115, 62, 117), make_color_rgb(115, 62, 117), false)
				//Main
				draw_rectangle_color(16, 42 + 16, display_get_width() - 16, display_get_height() - 10, make_color_rgb(255,170,215), make_color_rgb(255,170,215), make_color_rgb(255,170,215), make_color_rgb(255,170,215), false)
				break;
		}
		
		//Main border, borrowed from player
		draw_line_width(16, 42 + 16, display_get_gui_width() - 16, 42 + 16, 6);											//TOP BORDER
		draw_line_width(13, 42 + 20, 13, display_get_gui_height() - 12, 6);												//LEFT BORDER
		draw_line_width(display_get_width() - 13, 42 + 20, display_get_width() - 13, display_get_height() - 12, 6);	//RIGHT BORDER
		
		//UI - top buttons
		switch (global.OPT_CurrentTheme) {
			#region UI style: Default
			case "_T_d" :
				draw_set_valign(fa_middle);
				draw_set_halign(fa_center);
				#region Door Toggle
				draw_set_font(fnt_File);
				draw_sprite_ext(Spr_WHITE, 0, display_get_width()/40, (display_get_height()/11) - 15, 10, 21, 0, DoorToggleSelCol, 1); //BG color
				draw_sprite_ext(Spr_WHITE, 0, display_get_width()/36, (display_get_height()/11) - 11, 9.35, 20.45, 0, make_color_rgb(52, 76, 145), 1); //in-box color
				draw_sprite_ext(asset_get_index("Spr_DT" + global.OPT_CurrentTheme), global.DoorIconFrame, display_get_width()/15, (display_get_height()/4) + 70, 6, 6, 0, c_white, 1); //in-box color
				draw_text_transformed_color(display_get_width()/15, (display_get_height()/4) - 60, DoorStatus, 1, 1, 0, DoorTextColor, DoorTextColor, DoorTextColor, DoorTextColor, 1);
				draw_text_transformed_color(display_get_width()/15, (display_get_height()/9), "DOOR\nTOGGLE", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
				#endregion
				draw_set_halign(fa_left);
				#region FLOOR NAME:
				draw_text_transformed_color(display_get_width()/7.65, (display_get_height()/11), "Floor Name:", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
				draw_sprite_ext(asset_get_index("Spr_Bar" + global.OPT_CurrentTheme + FloorTextHoverSprite), 0, display_get_width()/6.6, display_get_height()/8, 1.5, -1.5, 0, c_white, 1);
				for (var i = 1; i < 3; i++) {
					draw_sprite_ext(asset_get_index("Spr_Bar" + global.OPT_CurrentTheme + FloorTextHoverSprite), 1, (display_get_width()/6.6) + (96 * i), display_get_height()/8, 1.5, -1.5, 0, c_white, 1);
				}
				draw_sprite_ext(asset_get_index("Spr_Bar" + global.OPT_CurrentTheme + FloorTextHoverSprite), 2, (display_get_width()/6.6) + (96 * 3), display_get_height()/8, 1.5, -1.5, 0, c_white, 1);
				draw_text_transformed_color(display_get_width()/7.5, display_get_height()/8, global.TI_Floor + BlinkFLOOR, 1.5, 1.5, 0, c_white, c_white, c_white, c_white, 1)
				#endregion
				#region AUTHOR NAME:
				draw_text_transformed_color(display_get_width()/7.65, (display_get_height()/11) + 90, "Author Name:", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
				draw_sprite_ext(asset_get_index("Spr_Bar" + global.OPT_CurrentTheme + AuthorTextHoverSprite), 0, display_get_width()/6.6, display_get_height()/8 + 90, 1.5, -1.5, 0, c_white, 1);
				for (var i = 1; i < 3; i++) {
					draw_sprite_ext(asset_get_index("Spr_Bar" + global.OPT_CurrentTheme + AuthorTextHoverSprite), 1, (display_get_width()/6.6) + (96 * i), display_get_height()/8 + 90, 1.5, -1.5, 0, c_white, 1);
				}
				draw_sprite_ext(asset_get_index("Spr_Bar" + global.OPT_CurrentTheme + AuthorTextHoverSprite), 2, (display_get_width()/6.6) + (96 * 3), display_get_height()/8 + 90, 1.5, -1.5, 0, c_white, 1);
				draw_text_transformed_color(display_get_width()/7.5, display_get_height()/8 + 90, global.TI_Author + BlinkAUTHOR, 1.5, 1.5, 0, c_white, c_white, c_white, c_white, 1)
				#endregion
				draw_set_halign(fa_center);
				#region Stage dust box
				draw_sprite_ext(Spr_WHITE, 0, display_get_width()/2.9, (display_get_height()/11) - 15, 30, 21, 0, make_color_rgb(25, 33, 66), 1); //BG color
				draw_sprite_ext(Spr_WHITE, 0, display_get_width()/2.9 + 4, (display_get_height()/11) - 11, 29.5, 20.5, 0, make_color_rgb(52, 76, 145), 1); //in-box color

				//Image Name and underline
				draw_set_font(fnt_File);
				draw_text_transformed_color(display_get_width()/2.435, (display_get_height()/10), filename_name(global.dust_sprite), 1, 1, 0, c_white, c_white, c_white, c_white, 1);
				draw_line_width(display_get_width()/2.825, display_get_height()/8.75, display_get_width()/2.15, display_get_height()/8.75, 4);											//TOP BORDER
				
				//Sprite box
				draw_sprite_ext(Spr_WHITE, 0, display_get_width()/2.1 - 4, display_get_height()/10 - 4, 13.5, 13.5, 0, make_color_rgb(25, 33, 66), 1); //Sprite bg
				draw_sprite_ext(Spr_WHITE, 0, display_get_width()/2.1, display_get_height()/10, 13, 13, 0, make_color_rgb(75, 75, 75), 1); //Sprite bg
				draw_sprite_ext(Spr_WHITE, 0, display_get_width()/2.1 + 4, display_get_height()/10 + 4, 12.5, 12.5, 0, make_color_rgb(105, 105, 105), 1); //Sprite bg (lighter)
				
				//Sprite
				draw_sprite_part_ext(global.spriteDust, 0, 0, 0, 6, 6, display_get_width()/6.5 + 4, display_get_height()/10 + 4, 33.2, 33.2, make_color_rgb(global.DustR, global.DustG, global.DustB), 1) //Sprite
				
				//Import
				draw_set_font(fnt_Menu);
				draw_sprite_ext(Spr_WHITE, 0, display_get_width()/2.1, display_get_height()/3.225, 13, 4, 0, ImportDustSelCol, 1); //import bg (darker)
				draw_sprite_ext(Spr_WHITE, 0, display_get_width()/2.1 + 4, display_get_height()/3.225 + 4, 12.5, 3.5, 0, make_color_rgb(52, 76, 145), 1); //import bg
				draw_text_transformed_color(display_get_width()/1.875, display_get_height()/3 + 6, "-Import-", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
				//Locker
				//draw_set_font(fnt_File);
				//draw_sprite_ext(Spr_WHITE, 0, display_get_width()/2.9, (display_get_height()/11) - 15, 30, 21, 0, c_black, 0.9);
				//draw_sprite_ext(Spr_Locked_T_d, 0, display_get_width()/2.1, (display_get_height()/6.75) + 90, 3, 3, 0, c_white, 1);
				//draw_text_transformed_color(display_get_width()/2.1, (display_get_height()/6.75) + 230, "AVAILABLE IN A LATER UPDATE.", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
				#endregion
				#region Animation Box
				draw_sprite_ext(Spr_WHITE, 0, display_get_width()/1.6675, (display_get_height()/11) - 15, 45, 20.9, 0, make_color_rgb(25, 33, 66), 1); //BG color
				draw_sprite_ext(Spr_WHITE, 0, display_get_width()/1.6675 + 4, (display_get_height()/11) - 11, 44.5, 20.35, 0, make_color_rgb(52, 76, 145), 1); //in-box color
				
				//Locker
				draw_set_font(fnt_File);
				draw_sprite_ext(Spr_WHITE, 0, display_get_width()/1.6675, (display_get_height()/11) - 15, 45, 20.9, 0, c_black, 0.9);
				draw_sprite_ext(Spr_Locked_T_d, 0, display_get_width()/1.2625, (display_get_height()/6.75) + 90, 3, 3, 0, c_white, 1);
				draw_text_transformed_color(display_get_width()/1.2625, (display_get_height()/6.75) + 230, "AVAILABLE IN A LATER UPDATE.", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
				#endregion
				break;
			#endregion
			#region UI style: Cute
			case "_T_c" :
				//Door toggle
				draw_sprite_ext(Spr_WHITE, 0, display_get_width()/40, (display_get_height()/11) - 15, 30, 10, 0, DoorToggleSelCol, 1); //BG color
				draw_sprite_ext(Spr_WHITE, 0, display_get_width()/36, (display_get_height()/10.5) - 15, 29.35, 9.4, 0, make_color_rgb(52, 76, 145), 1); //in-box color
				break;
			#endregion
		}
		
		#region bottom half of screen, includes the screen seperator and gray floor background
		draw_rectangle_color(0, display_get_height()/2 - display_get_height()/20 + 22, display_get_width(), display_get_height() - 20, make_color_rgb(255, 181, 0), make_color_rgb(255, 181, 0), make_color_rgb(255, 181, 0), make_color_rgb(255, 181, 0), false) //yellow
		switch (global.OPT_CurrentTheme) {
			case ("_T_d") : draw_rectangle_color(0, display_get_height()/2 - display_get_height()/20 + 28, display_get_width(), display_get_height() - 20, make_color_rgb(25, 33, 66), make_color_rgb(25, 33, 66), make_color_rgb(25, 33, 66), make_color_rgb(25, 33, 66), false); break;
			case ("_T_c") : draw_rectangle_color(0, display_get_height()/2 - display_get_height()/20 + 28, display_get_width(), display_get_height() - 20, make_color_rgb(115, 62, 117), make_color_rgb(115, 62, 117), make_color_rgb(115, 62, 117), make_color_rgb(115, 62, 117), false); break;
		}
		draw_rectangle_color(0, display_get_height()/2 - display_get_height()/20 + 48, display_get_width(), display_get_height() - 20, make_color_rgb(255, 181, 0), make_color_rgb(255, 181, 0), make_color_rgb(255, 181, 0), make_color_rgb(255, 181, 0), false) //yellow
		draw_sprite_ext(Spr_WHITE, 0, 0, display_get_height()/2, 120, 34, 0, make_color_rgb(75, 75, 75), 1); //floor bg
		draw_sprite_ext(Spr_WHITE, 0, 4, display_get_height()/2 + 4, 119.5, 33.25, 0, make_color_rgb(105, 105, 105), 1); //floor bg (lighter)
		#endregion
		
		#region Shift stage bar
		//Mid StageShiftBar
		for (var i = 2; i < 19; i++) {
			draw_sprite_ext(asset_get_index("Spr_Bar" + global.OPT_CurrentTheme + BarStageShiftHoverSprite), 1, (display_get_width()/10) - (display_get_width()/10) + (96 * i), display_get_height()/2 - display_get_height()/15, 1.5, 1.5, 0, c_white, 1);
		}
		//Left StageShiftBar
		draw_sprite_ext(asset_get_index("Spr_Bar" + global.OPT_CurrentTheme + BarStageShiftHoverSprite), 0, (display_get_width()/10) - (display_get_width()/20), display_get_height()/2 - display_get_height()/15, 1.5, 1.5, 0, c_white, 1);
		//Right StageShiftBar
		draw_sprite_ext(asset_get_index("Spr_Bar" + global.OPT_CurrentTheme + BarStageShiftHoverSprite), 2, (display_get_width()/10) - (display_get_width()/10) + (96 * 19), display_get_height()/2 - display_get_height()/15, 1.5, 1.5, 0, c_white, 1);
		//Bar Grabber
		draw_sprite_ext(asset_get_index("Spr_BarGrab" + global.OPT_CurrentTheme), -1, global.BarGrabStageShift, display_get_height()/2 - display_get_height()/15, 1.5, 1.5, 0, c_white, 1);
		#endregion
		break;
	#endregion
}
if (room == (Rm_FlrEditor)) {
	if !(global.spriteLoaded || (global.spriteLoadedDoor && global.spriteLoadedDoor)) {
		draw_sprite_ext(Spr_WHITE, 0, 0, 0, 120, 80, 0, c_black, 0.95);
		draw_set_font(fnt_Menu);
		draw_set_halign(fa_middle);
		draw_set_valign(fa_center);
		draw_text_transformed_color(display_get_width()/2, display_get_height()/2, "Please import/open a sprite...", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
		draw_set_font(fnt_File);
		draw_text_transformed_color(display_get_width()/2, display_get_height()/2 + 35, "(go through File>New, or use Ctrl + N)", 1, 1, 0, c_dkgray, c_dkgray, c_dkgray, c_dkgray, 1);
	}
}