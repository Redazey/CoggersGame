gui_mouse_x = device_mouse_x_to_gui(0)
gui_mouse_y = device_mouse_y_to_gui(0)

if instance_position(gui_mouse_x, gui_mouse_y, self) and mouse_check_button_pressed(mb_left){
	if checked {
		sprite_index=sprtNoSound
		checked = false
	} else {
		sprite_index=sprtSound
		checked = true
	}
}