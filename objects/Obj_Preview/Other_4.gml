switch (room) {
	case (Rm_FlrEditor) :
		//0 = OPEN
		//180 = CLOSED
		global.DOOR_OPENER = 0;
		BarShiftX = 0;
		FloorCount = 3;
		
		global.StageSelFade = 0;
	case (Rm_PlrEditor) :
		global.MyPCFrameX = 0;
		global.MyPCFrameY = 0;
		global.MyCPFrameX = 0;
		global.MyCPFrameY = 128;
}