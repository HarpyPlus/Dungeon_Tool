a = 225 //text shadow color

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


switch (_current_hour >= 13) {
	case true :
		_current_hour -= 12;
		WhichTimeHalf = "PM";
		break
	case false :
		WhichTimeHalf = "AM";
		break;
}

draw_set_halign(fa_right);
if (string_length(string(current_minute)) == 1) {
	draw_text_transformed_color(display_get_width() - 20, y, string(_current_hour) + ":0" + string(current_minute) + " " + WhichTimeHalf, 1, 1, 0, c_black, c_black, c_black, c_black, 1); //Hour	
}
else {
	draw_text_transformed_color(display_get_width() - 20, y, string(_current_hour) + ":" + string(current_minute) + " " + WhichTimeHalf, 1, 1, 0, c_black, c_black, c_black, c_black, 1); //Hour	
}

draw_set_font(fnt_File);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
draw_line_width_color(-2, 44, display_get_width(), 44, 4, c_black, c_black); //Seperation from main screen

if (InFileBounds) {
	draw_rectangle_color(-6, 42, 444, 309, c_ltgray, c_ltgray, c_ltgray, c_ltgray, false); //File Sel box OUTLINE
	draw_rectangle_color(-2, 46, 440, 305, c_white, c_white, c_white, c_white, false); //File Sel box
	//New                  Y-33      Y+5
	draw_rectangle_color(4, 52, 434, 90, FNSelCol, FNSelCol, FNSelCol, FNSelCol, false); //New Sel box
	draw_text_transformed_color(50, 85, "New                                 (Ctrl + N)", 1, 1, 0, c_black, c_black, c_black, c_black, 1);
	//Open                 Y-29      Y+5
	draw_rectangle_color(4, 91, 434, 125, FOSelCol, FOSelCol, FOSelCol, FOSelCol, false); //Open Sel box
	draw_text_transformed_color(50, 120, "Open                               (Ctrl + O)", 1, 1, 0, c_black, c_black, c_black, c_black, 1);
	//Open                 Y-29      Y+5
	draw_rectangle_color(4, 126, 434, 160, FRSelCol, FRSelCol, FRSelCol, FRSelCol, false); //Recent Sel box
	draw_text_transformed_color(50, 155, "Recent Files                                    >>", 1, 1, 0, c_maroon, c_maroon, c_red, c_red, 1);
	//Save
	if (global.spriteLoaded) {
		//                      Y-29      Y+5
		draw_rectangle_color(4, 176, 434, 210, FSSelCol, FSSelCol, FSSelCol, FSSelCol, false); //Recent Sel box
	}
	draw_text_transformed_color(50, 205, "Save                               (Ctrl + S)", 1, 1, 0, SpriteLoadColor, SpriteLoadColor, SpriteLoadColor, SpriteLoadColor, 1); //Print File
	//Close                 Y-29      Y+5
	draw_rectangle_color(4, 226, 434, 260, FCSelCol, FCSelCol, FCSelCol, FCSelCol, false); //Recent Sel box
	draw_text_transformed_color(50, 255, "Close", 1, 1, 0, c_black, c_black, c_black, c_black, 1); //Print File
	//Exit                  Y-29      Y+5
	draw_rectangle_color(4, 261, 434, 295, FESelCol, FESelCol, FESelCol, FESelCol, false); //Recent Sel box
	draw_text_transformed_color(50, 290, "Exit                                 (Escape)", 1, 1, 0, c_black, c_black, c_black, c_black, 1); //Print File
}

if (InEditBounds) {
	draw_rectangle_color(121, 42, 569, 139, c_ltgray, c_ltgray, c_ltgray, c_ltgray, false); //File Sel box OUTLINE
	draw_rectangle_color(125, 46, 565, 135, c_white, c_white, c_white, c_white, false); //File Sel box
	draw_text_transformed_color(175, 85, "Reload Sheet                    (Ctrl + R)", 1, 1, 0, SpriteLoadColor, SpriteLoadColor, SpriteLoadColor, SpriteLoadColor, 1); //Print File
	draw_text_transformed_color(175, 120, "Preview Character          (Ctrl + P)", 1, 1, 0, SpriteLoadColor, SpriteLoadColor, SpriteLoadColor, SpriteLoadColor, 1); //Print Fileint File
}

if (InHelpBounds) {
	draw_rectangle_color(373, 44, 567, 102, c_ltgray, c_ltgray, c_ltgray, c_ltgray, false); //File Sel box OUTLINE
	draw_rectangle_color(375, 46, 565, 100, c_white, c_white, c_white, c_white, false); //File Sel box
	draw_text_transformed_color(425, 85, "About", 1, 1, 0, c_black, c_black, c_black, c_black, 1); //Print File
}