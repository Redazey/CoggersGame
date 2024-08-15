gui_mouse_x = device_mouse_x_to_gui(0)
gui_mouse_y = device_mouse_y_to_gui(0)

var _fullscreen = window_get_fullscreen()

if instance_position(gui_mouse_x, gui_mouse_y, self) and mouse_check_button_pressed(mb_left){
	if _fullscreen {
		sprite_index=spr_checkbox
		window_set_fullscreen(false)
	} else {
		sprite_index=spr_checkbox_checked
		window_set_fullscreen(true)
	}
	
	audio_play_sound(snd_btn_click, 1, false)
}
