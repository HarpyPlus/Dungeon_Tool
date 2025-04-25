/// @description Insert description here
// You can write your code in this editor

if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), TXT_Plr.bbox_left - 170, TXT_Plr.bbox_top + 10, TXT_Plr.bbox_right + 170, TXT_Plr.bbox_bottom + 40)) {
	PlrTextCol = c_yellow;
	if (PlrTextSiz < 1.03) { PlrTextSiz += 0.015; }
	if (mouse_check_button(mb_left)) {
		room = Rm_PlrEditor;
	}
}
else {
	PlrTextCol = c_white;
	if (PlrTextSiz > 1) { PlrTextSiz -= 0.015; }
}

if point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), TXT_Enm.bbox_left - 170, TXT_Enm.bbox_top + 10, TXT_Enm.bbox_right + 170, TXT_Enm.bbox_bottom + 40) {
	EnmTextCol = c_yellow;
	if (EnmTextSiz < 1.03) { EnmTextSiz += 0.015; }
	if (mouse_check_button(mb_left)) {
		room = Rm_EnmEditor;
	}
}
else {
	EnmTextCol = c_white;
	if (EnmTextSiz > 1) { EnmTextSiz -= 0.015; }
}

if point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),TXT_Flr.bbox_left - 160, TXT_Flr.bbox_top, TXT_Flr.bbox_right + 160, TXT_Flr.bbox_bottom + 40) {
	FlrTextCol = c_yellow;
	if (FlrTextSiz < 1.03) { FlrTextSiz += 0.015; }
	if (mouse_check_button(mb_left)) {
		room = Rm_FlrEditor;
	}
}
else {
	FlrTextCol = c_white;
	if (FlrTextSiz > 1) { FlrTextSiz -= 0.015; }
}

if point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), TXT_Net.bbox_left - 230, TXT_Net.bbox_top, TXT_Net.bbox_right + 230, TXT_Net.bbox_bottom + 40) {
	NetTextCol = c_yellow;
	if (NetTextSiz < 1.03) { NetTextSiz += 0.015; }
	if (mouse_check_button(mb_left)) {
		global.GoingNextRoom = true;
		global.NextRoom = "OPTIONS";
	}
}
else {
	NetTextCol = c_white;
	if (NetTextSiz > 1) { NetTextSiz -= 0.015; }
}

if point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), TXT_Htu.bbox_left - 100, TXT_Htu.bbox_top, TXT_Htu.bbox_right + 100, TXT_Htu.bbox_bottom + 40) {
	HtuTextCol = c_yellow;
	if (HtuTextSiz < 1.03) { HtuTextSiz += 0.015; }
	if (mouse_check_button(mb_left)) {
		global.GoingNextRoom = true;
		global.NextRoom = "DUMBASS";
	}
}
else {
	HtuTextCol = c_white;
	if (HtuTextSiz > 1) { HtuTextSiz -= 0.015; }
}

if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), TXT_Ext.bbox_left - 170, TXT_Ext.bbox_top + 10, TXT_Ext.bbox_right + 170, TXT_Ext.bbox_bottom + 40)) {
	ExtTextCol = c_yellow;
	if (ExtTextSiz < 1.03) { ExtTextSiz += 0.015; }
	if (mouse_check_button(mb_left)) {
		game_end()
	}
}
else {
	ExtTextCol = c_white;
	if (ExtTextSiz > 1) { ExtTextSiz -= 0.015; }
}