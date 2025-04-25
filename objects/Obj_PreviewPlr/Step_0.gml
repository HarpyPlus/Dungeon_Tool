/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(ord("X"))) {
	switch (ScaleDown) {
		case true :
			ScaleDown = false
			break
		case false :
			ScaleDown = true
			break
	}
}