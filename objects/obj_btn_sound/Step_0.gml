gui_mouse_x = device_mouse_x_to_gui(0)
gui_mouse_y = device_mouse_y_to_gui(0)

if audio_get_master_gain(0) != 0 {
	sprite_index=spr_soundbox
} else if audio_get_master_gain(0) == 0 {
	sprite_index=spr_sounbox_checked
}

if instance_position(gui_mouse_x, gui_mouse_y, self) and mouse_check_button_pressed(mb_left){
	if audio_get_master_gain(0) != 0 {
		audio_set_master_gain(0, 0)
	} else if audio_get_master_gain(0) == 0 {
		audio_set_master_gain(0, 1)
	}
	
	audio_play_sound(snd_btn_click, 1, false)
}