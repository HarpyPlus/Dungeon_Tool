
switch (room) {
	case (Rm_FlrEditor) :
		/*
		if (!global.StageZoom) {
			BarShiftX1 = (((global.BarGrabStageShift - ((display_get_width()/10) - (display_get_width()/20))) * ((320 * FloorCount*1) + (200 * FloorCount))) / (((display_get_width()/10) - (display_get_width()/10) + (96 * 19)) - ((display_get_width()/10) - (display_get_width()/20))) / (3));
			BarShiftX2 = (((global.BarGrabStageShift - ((display_get_width()/10) - (display_get_width()/20))) * ((320 * FloorCount*1.2) + (200 * FloorCount))) / (((display_get_width()/10) - (display_get_width()/10) + (96 * 19)) - ((display_get_width()/10) - (display_get_width()/20))) / (3));
			BarShiftX3 = (((global.BarGrabStageShift - ((display_get_width()/10) - (display_get_width()/20))) * ((320 * FloorCount*1.4) + (200 * FloorCount))) / (((display_get_width()/10) - (display_get_width()/10) + (96 * 19)) - ((display_get_width()/10) - (display_get_width()/20))) / (3));
			BarShiftX4 = (((global.BarGrabStageShift - ((display_get_width()/10) - (display_get_width()/20))) * ((320 * FloorCount*1.6) + (200 * FloorCount))) / (((display_get_width()/10) - (display_get_width()/10) + (96 * 19)) - ((display_get_width()/10) - (display_get_width()/20))) / (3));
			BarShiftX5 = (((global.BarGrabStageShift - ((display_get_width()/10) - (display_get_width()/20))) * ((320 * FloorCount*1.8) + (200 * FloorCount))) / (((display_get_width()/10) - (display_get_width()/10) + (96 * 19)) - ((display_get_width()/10) - (display_get_width()/20))) / (3));
			BarShiftX6 = (((global.BarGrabStageShift - ((display_get_width()/10) - (display_get_width()/20))) * ((320 * FloorCount*2) + (200 * FloorCount))) / (((display_get_width()/10) - (display_get_width()/10) + (96 * 19)) - ((display_get_width()/10) - (display_get_width()/20))) / (3));
		}
		else {
		*/
			//this fucking sucks and only works with 3 floor loops lmao
		if (global.OPT_Parallax) {
			BarShiftX1 = (((global.BarGrabStageShift - ((display_get_width()/10) - (display_get_width()/20))) * ((320 * FloorCount*1) + (200 * FloorCount))) / (((display_get_width()/10) - (display_get_width()/10) + (96 * 19)) - ((display_get_width()/10) - (display_get_width()/20))) / (3));
			BarShiftX2 = (((global.BarGrabStageShift - ((display_get_width()/10) - (display_get_width()/20))) * ((320 * FloorCount*0.9) + (200 * FloorCount))) / (((display_get_width()/10) - (display_get_width()/10) + (96 * 19)) - ((display_get_width()/10) - (display_get_width()/20))) / (3));
			BarShiftX3 = (((global.BarGrabStageShift - ((display_get_width()/10) - (display_get_width()/20))) * ((320 * FloorCount*0.8) + (200 * FloorCount))) / (((display_get_width()/10) - (display_get_width()/10) + (96 * 19)) - ((display_get_width()/10) - (display_get_width()/20))) / (3));
			BarShiftX4 = (((global.BarGrabStageShift - ((display_get_width()/10) - (display_get_width()/20))) * ((320 * FloorCount*0.7) + (200 * FloorCount))) / (((display_get_width()/10) - (display_get_width()/10) + (96 * 19)) - ((display_get_width()/10) - (display_get_width()/20))) / (3));
			BarShiftX5 = (((global.BarGrabStageShift - ((display_get_width()/10) - (display_get_width()/20))) * ((320 * FloorCount*0.6) + (200 * FloorCount))) / (((display_get_width()/10) - (display_get_width()/10) + (96 * 19)) - ((display_get_width()/10) - (display_get_width()/20))) / (3));
			BarShiftX6 = (((global.BarGrabStageShift - ((display_get_width()/10) - (display_get_width()/20))) * ((320 * FloorCount*0.5) + (200 * FloorCount))) / (((display_get_width()/10) - (display_get_width()/10) + (96 * 19)) - ((display_get_width()/10) - (display_get_width()/20))) / (3));
		}
		else {
			BarShiftX1 = (((global.BarGrabStageShift - ((display_get_width()/10) - (display_get_width()/20))) * ((320 * FloorCount*1) + (200 * FloorCount))) / (((display_get_width()/10) - (display_get_width()/10) + (96 * 19)) - ((display_get_width()/10) - (display_get_width()/20))) / (3));
			BarShiftX2 = (((global.BarGrabStageShift - ((display_get_width()/10) - (display_get_width()/20))) * ((320 * FloorCount*1) + (200 * FloorCount))) / (((display_get_width()/10) - (display_get_width()/10) + (96 * 19)) - ((display_get_width()/10) - (display_get_width()/20))) / (3));
			BarShiftX3 = (((global.BarGrabStageShift - ((display_get_width()/10) - (display_get_width()/20))) * ((320 * FloorCount*1) + (200 * FloorCount))) / (((display_get_width()/10) - (display_get_width()/10) + (96 * 19)) - ((display_get_width()/10) - (display_get_width()/20))) / (3));
			BarShiftX4 = (((global.BarGrabStageShift - ((display_get_width()/10) - (display_get_width()/20))) * ((320 * FloorCount*1) + (200 * FloorCount))) / (((display_get_width()/10) - (display_get_width()/10) + (96 * 19)) - ((display_get_width()/10) - (display_get_width()/20))) / (3));
			BarShiftX5 = (((global.BarGrabStageShift - ((display_get_width()/10) - (display_get_width()/20))) * ((320 * FloorCount*1) + (200 * FloorCount))) / (((display_get_width()/10) - (display_get_width()/10) + (96 * 19)) - ((display_get_width()/10) - (display_get_width()/20))) / (3));
			BarShiftX6 = (((global.BarGrabStageShift - ((display_get_width()/10) - (display_get_width()/20))) * ((320 * FloorCount*1) + (200 * FloorCount))) / (((display_get_width()/10) - (display_get_width()/10) + (96 * 19)) - ((display_get_width()/10) - (display_get_width()/20))) / (3));
		}
		//}
	case (Rm_PlrEditor) :
}