if (room == Rm_Title) {
	x = (display_get_width() - display_get_width()/4);

	TXT_Plr.y = (display_get_height()/2 - display_get_height()/6);
	TXT_Enm.y = TXT_Plr.y + display_get_height()/16;
	TXT_Flr.y = TXT_Enm.y + display_get_height()/16;
	TXT_Opt.y = TXT_Flr.y + display_get_height()/16;
	TXT_Htu.y = TXT_Opt.y + display_get_height()/16;
	TXT_Ext.y = TXT_Htu.y + display_get_height()/16;
	
	PlrTextSiz = 1;
	EnmTextSiz = 1;
	FlrTextSiz = 1;
	OptTextSiz = 1;
	HtuTextSiz = 1;
	ExtTextSiz = 1;
}
else if (room == Rm_Options) {
	x = (display_get_width() - display_get_width()/2);
	
	TXT_OPT_FULLSCREEN.y = (display_get_height()/2 - display_get_height()/6);
	TXT_OPT_TXTRSHARP.y = TXT_OPT_FULLSCREEN.y + display_get_height()/16;
	TXT_OPT_TIME.y = TXT_OPT_TXTRSHARP.y + display_get_height()/16;
	TXT_OPT_THEME.y = TXT_OPT_TIME.y + display_get_height()/16;
	TXT_OPT_PAR.y = TXT_OPT_THEME.y + display_get_height()/16;
	TXT_OPT_EXIT.y = TXT_OPT_PAR.y + display_get_height()/16;

	Opt_FsTextSiz = 1; //Fullscreen
	Opt_TsTextSiz = 1; //Texture Sharpen
	Opt_WtTextSiz = 1; //Weird Time
	Opt_ThTextSiz = 1; //Theme
	Opt_PaTextSiz = 1; //Parallax
	Opt_ExTextSiz = 1; //Exit
}