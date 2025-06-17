InFileBounds = false;
InEditBounds = false;
InViewBounds = false;
InHelpBounds = false;
FirstSelCol = c_white;
SeconSelCol = c_white;
ThirdSelCol = c_white;
FourtSelCol = c_white;
FifthSelCol = c_white;
SixthSelCol = c_white;
SevenSelCol = c_white;

//hey thats me!!
global.HelpImShowingmyNameForLegitimateReasons = false;

Obj_Preview.sprite_index = global.spritePlayer;

//only used in player testing, will make it a thing if croc wants it in floor testing
global.AmISaved = false;

switch (room) {
	//FLOOR
	case (Rm_FlrEditor) :
		BottomFileBB = 305;
		break;
	//PLAYER
	case (Rm_PlrEditor) :
		//extends the bottom boundry to correctly go along with the drawn file box
		BottomFileBB = 305;
		break;
}