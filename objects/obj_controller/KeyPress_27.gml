if room != rm_menu and room != rm_settings {
	if global.pause == 0 {
		global.pause = 1
	} else {
		scr_unpause()
	}
}