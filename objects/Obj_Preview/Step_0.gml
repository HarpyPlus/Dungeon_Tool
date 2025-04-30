switch (room) {
	case (Rm_FlrEditor) :
		//Comment for future use.
	case (Rm_PlrEditor) :
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
}