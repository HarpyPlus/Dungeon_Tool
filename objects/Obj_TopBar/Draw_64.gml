a = 225 //text shadow color

#region Actual top bar
draw_set_font(fnt_File);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_rectangle_color(-2, -2, display_get_width(), 44, c_white, c_white, c_white, c_white, false); //Main box

draw_rectangle_color(-2, -2, 125, 44, FileSelCol, FileSelCol, FileSelCol, FileSelCol, false);
draw_text_transformed_color(x + 2, y + 2, "File", 1, 1, 0, make_color_rgb(a, a, a), make_color_rgb(a, a, a), make_color_rgb(a, a, a), make_color_rgb(a, a, a), 1);
draw_text_transformed_color(x, y, "File", 1, 1, 0, c_black, c_black, c_black, c_black, 1);

draw_rectangle_color(125, -2, 250, 44, EditSelCol, EditSelCol, EditSelCol, EditSelCol, false);
draw_text_transformed_color(x + 127, y + 2, "Edit", 1, 1, 0, make_color_rgb(a, a, a), make_color_rgb(a, a, a), make_color_rgb(a, a, a), make_color_rgb(a, a, a), 1);
draw_text_transformed_color(x + 125, y, "Edit", 1, 1, 0, c_black, c_black, c_black, c_black, 1);

draw_rectangle_color(250, -2, 375, 44, ViewSelCol, ViewSelCol, ViewSelCol, ViewSelCol, false);
draw_text_transformed_color(x + 252, y + 2, "View", 1, 1, 0, make_color_rgb(a, a, a), make_color_rgb(a, a, a), make_color_rgb(a, a, a), make_color_rgb(a, a, a), 1);
draw_text_transformed_color(x + 250, y, "View", 1, 1, 0, c_black, c_black, c_black, c_black, 1); //Print File

draw_rectangle_color(375, -2, 500, 44, HelpSelCol, HelpSelCol, HelpSelCol, HelpSelCol, false);
draw_text_transformed_color(x + 377, y + 2, "Help", 1, 1, 0, make_color_rgb(a, a, a), make_color_rgb(a, a, a), make_color_rgb(a, a, a), make_color_rgb(a, a, a), 1);
draw_text_transformed_color(x + 375, y, "Help", 1, 1, 0, c_black, c_black, c_black, c_black, 1);
#endregion

#region Time style changer
if (global.OPT_WeirdTime == false) {
	if (_current_hour > 12) {
		_current_hour -= 12;
		currentDayHalf = " PM";
	}
	else if (_current_hour = 12) {
		currentDayHalf = " PM";
	}
	else {
		if (_current_hour == 0) {
			_current_hour += 12;
		}
		currentDayHalf = " AM"; 
	}
}
else {
	currentDayHalf = "";
}

draw_set_halign(fa_right);
if (string_length(string(current_minute)) == 1) {
	draw_text_transformed_color(display_get_width() - 20, y, string(_current_hour) + ":0" + string(current_minute) + currentDayHalf, 1, 1, 0, c_black, c_black, c_black, c_black, 1); //Hour	
}
else {
	draw_text_transformed_color(display_get_width() - 20, y, string(_current_hour) + ":" + string(current_minute) + currentDayHalf, 1, 1, 0, c_black, c_black, c_black, c_black, 1); //Hour	
}
#endregion

draw_set_halign(fa_left);
draw_line_width_color(-2, 44, display_get_width(), 44, 4, c_black, c_black); //Seperation from main screen

if (InFileBounds) {
	switch (room) {
		//FLOOR
		case (Rm_FlrEditor) :
			draw_rectangle_color(-6, 42, 444, 209, c_ltgray, c_ltgray, c_ltgray, c_ltgray, false); //Text bg outline
			draw_rectangle_color(-2, 46, 440, 205, c_white, c_white, c_white, c_white, false); //Text bg
			//New                  Y-33      Y+5
			draw_rectangle_color(4, 52, 434, 90, FirstSelCol, FirstSelCol, FirstSelCol, FirstSelCol, false);
			draw_text_transformed_color(50, 85, "New                                 (Ctrl + N)", 1, 1, 0, c_black, c_black, c_black, c_black, 1);
			//Recent               Y-29      Y+5
			draw_rectangle_color(4, 91, 434, 125, SeconSelCol, SeconSelCol, SeconSelCol, SeconSelCol, false);
			draw_text_transformed_color(50, 120, "Recent Files                                    >>", 1, 1, 0, c_maroon, c_maroon, c_red, c_red, 1);
			//Close                 Y-29      Y+5
			draw_rectangle_color(4, 126, 434, 160, ThirdSelCol, ThirdSelCol, ThirdSelCol, ThirdSelCol, false);
			draw_text_transformed_color(50, 155, "Close", 1, 1, 0, c_black, c_black, c_black, c_black, 1);
			//Exit                  Y-29      Y+5
			draw_rectangle_color(4, 161, 434, 195, FourtSelCol, FourtSelCol, FourtSelCol, FourtSelCol, false);
			draw_text_transformed_color(50, 190, "Exit                                 (Escape)", 1, 1, 0, c_black, c_black, c_black, c_black, 1);
			break
		case (Rm_PlrEditor) :
			draw_rectangle_color(-6, 42, 444, 309, c_ltgray, c_ltgray, c_ltgray, c_ltgray, false); //Text bg outline
			draw_rectangle_color(-2, 46, 440, 305, c_white, c_white, c_white, c_white, false); //Text bg
			//New                  Y-33      Y+5
			draw_rectangle_color(4, 52, 434, 90, FirstSelCol, FirstSelCol, FirstSelCol, FirstSelCol, false);
			draw_text_transformed_color(50, 85, "New                                 (Ctrl + N)", 1, 1, 0, c_black, c_black, c_black, c_black, 1);
			//Open                 Y-29      Y+5
			draw_rectangle_color(4, 91, 434, 125, SeconSelCol, SeconSelCol, SeconSelCol, SeconSelCol, false);
			draw_text_transformed_color(50, 120, "Open                               (Ctrl + O)", 1, 1, 0, c_black, c_black, c_black, c_black, 1);
			//Open                 Y-29      Y+5
			draw_rectangle_color(4, 126, 434, 160, ThirdSelCol, ThirdSelCol, ThirdSelCol, ThirdSelCol, false);
			draw_text_transformed_color(50, 155, "Recent Files                                    >>", 1, 1, 0, c_maroon, c_maroon, c_red, c_red, 1);
			//Save
			if (global.spriteLoaded) {
				//                      Y-29      Y+5
				draw_rectangle_color(4, 176, 434, 210, FourtSelCol, FourtSelCol, FourtSelCol, FourtSelCol, false);
			}
			draw_text_transformed_color(50, 205, "Save                               (Ctrl + S)", 1, 1, 0, global.SpriteLoadColor, global.SpriteLoadColor, global.SpriteLoadColor, global.SpriteLoadColor, 1);
			//Close                 Y-29      Y+5
			draw_rectangle_color(4, 226, 434, 260, FifthSelCol, FifthSelCol, FifthSelCol, FifthSelCol, false);
			draw_text_transformed_color(50, 255, "Close", 1, 1, 0, c_black, c_black, c_black, c_black, 1);
			//Exit                  Y-29      Y+5
			draw_rectangle_color(4, 261, 434, 295, SixthSelCol, SixthSelCol, SixthSelCol, SixthSelCol, false);
			draw_text_transformed_color(50, 290, "Exit                                 (Escape)", 1, 1, 0, c_black, c_black, c_black, c_black, 1);
			break
	}
}

if (InEditBounds) {
	draw_rectangle_color(121, 42, 569, 139, c_ltgray, c_ltgray, c_ltgray, c_ltgray, false); //Text bg outline
	draw_rectangle_color(125, 46, 565, 135, c_white, c_white, c_white, c_white, false); //Text bg
	switch (room) {
		//yeah, its different cause it deals with different sheets!!
		case (Rm_FlrEditor) :
			draw_rectangle_color(131, 52, 559, 90, FirstSelCol, FirstSelCol, FirstSelCol, FirstSelCol, false);
			draw_text_transformed_color(175, 85, "Reload Sheet                    (Ctrl + R)", 1, 1, 0, global.SpriteLoadColor, global.SpriteLoadColor, global.SpriteLoadColor, global.SpriteLoadColor, 1); //Print File
			draw_rectangle_color(131, 91, 559, 126, SeconSelCol, SeconSelCol, SeconSelCol, SeconSelCol, false);
			draw_text_transformed_color(175, 120, "Preview Floor                    (Ctrl + O)", 1, 1, 0, c_maroon, c_maroon, c_red, c_red, 1); //Print Fileint File
			break;
		case (Rm_PlrEditor) :
			draw_rectangle_color(131, 52, 559, 90, FirstSelCol, FirstSelCol, FirstSelCol, FirstSelCol, false);
			draw_text_transformed_color(175, 85, "Reload Sheet                    (Ctrl + R)", 1, 1, 0, global.SpriteLoadColor, global.SpriteLoadColor, global.SpriteLoadColor, global.SpriteLoadColor, 1);
			draw_rectangle_color(131, 91, 559, 126, SeconSelCol, SeconSelCol, SeconSelCol, SeconSelCol, false);
			draw_text_transformed_color(175, 120, "Preview Character          (Ctrl + P)", 1, 1, 0, c_maroon, c_maroon, c_red, c_red, 1);
			break;
	}
}

if (InHelpBounds) {
	draw_rectangle_color(371, 42, 569, 104, c_ltgray, c_ltgray, c_ltgray, c_ltgray, false); //Text bg outline
	draw_rectangle_color(375, 46, 565, 100, c_white, c_white, c_white, c_white, false); //Text bg
	//About                  Y-33      Y+5
	draw_rectangle_color(381, 52, 559, 90, FirstSelCol, FirstSelCol, FirstSelCol, FirstSelCol, false);
	draw_text_transformed_color(425, 85, "About", 1, 1, 0, c_black, c_black, c_black, c_black, 1);
}

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if (global.HelpImShowingmyNameForLegitimateReasons == true) {
	draw_sprite_ext(Spr_Bar_T_d, 0, display_get_width()/2 - 5, display_get_height()/2 + display_get_height()/15, 1.5, 1.5, 0, c_white, 1);
	draw_sprite_ext(Spr_Bar_T_d, 2, display_get_width()/2 + 5, display_get_height()/2 + display_get_height()/15, 1.5, 1.5, 0, c_white, 1);
	draw_text_transformed_color(display_get_width()/2, display_get_height()/2, "Developed by \n Sora \"HarpyPlus\" Wyndham \n2025\n\n Made in GameMaker 2 \n\n Okay", 1, 1, 0, c_black, c_black, c_black, c_black, 1); //thats- thats my name on the screen oh god
}