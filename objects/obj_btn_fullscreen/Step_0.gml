gui_mouse_x = device_mouse_x_to_gui(0)
gui_mouse_y = device_mouse_y_to_gui(0)

if instance_position(gui_mouse_x, gui_mouse_y, self) and mouse_check_button_pressed(mb_left){
	if checked {
		sprite_index=spr_checkbox
		checked = false
	} else {
		sprite_index=spr_checkbox_checked
		checked = true
	}
	
	audio_play_sound(snd_btn_click, 1, false)
}
