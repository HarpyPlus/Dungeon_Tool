x = display_get_width()/2 - display_get_width()/4;
y = display_get_height()/2;

funnyString = "weezer jumpscare";
funnyNumber = round(random_range(1, 2));

switch funnyNumber {
	case 1 : funnyString = "idk who this is but its now our logo placeholder"; break;
	case 2 : funnyString = "MRPLAGUE SIGNED MY TOASTER!!!!!!!!!!!"; break;
}
switch funnyNumber {
	case 1 : Obj_funnysilly.sprite_index = funny1_T_d; break;
	case 2 : Obj_funnysilly.sprite_index = funny2_T_d; break;
}