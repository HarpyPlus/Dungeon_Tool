//put this as a switch in future updates, somewhere
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