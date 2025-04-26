x = (display_get_width() - display_get_width()/4)

TXT_Plr.y = (display_get_height()/2 - display_get_height()/6)
TXT_Enm.y = TXT_Plr.y + display_get_height()/16
TXT_Flr.y = TXT_Enm.y + display_get_height()/16
TXT_Net.y = TXT_Flr.y + display_get_height()/16
TXT_Htu.y = TXT_Net.y + display_get_height()/16
TXT_Ext.y = TXT_Htu.y + display_get_height()/16

PlrTextSiz = 1
EnmTextSiz = 1
FlrTextSiz = 1
NetTextSiz = 1
HtuTextSiz = 1
ExtTextSiz = 1

versionNumber = "2.0.0a"

funnyNumber = random_range(1, 1)
switch funnyNumber {
	case 1 :
		funnyString = "idk who this is but its now our logo placeholder";
}