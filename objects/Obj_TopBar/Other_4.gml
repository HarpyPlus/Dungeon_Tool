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

//if !spriteload, c_ltgray. else, c_black
SpriteLoadColor = c_ltgray;

global.AmISaved = false;
global.spriteLoaded = false;

switch (room) {
	//FLOOR
	case (Rm_FlrEditor) :
		BottomFileBB = 205;
		break
	//PLAYER
	case (Rm_PlrEditor) :
		//extends the bottom boundry to correctly go along with the drawn box
		BottomFileBB = 305;
		break
}