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

//if !save, c_ltgray. else, c_black
SpriteLoadColor = c_ltgray;

//Add to Options screen
#region
AddedTextureSharpen = true;
WeirdTime = false;
#endregion

global.AmISaved = false;
global.spriteLoaded = false;

switch (room) {
	//FLOOR
	case (Rm_FlrEditor) :
		BottomFileBB = 205;
		break
	case (Rm_PlrEditor) :
		BottomFileBB = 305;
		break
}