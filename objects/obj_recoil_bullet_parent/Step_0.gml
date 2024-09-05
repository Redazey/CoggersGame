var _gui_mouse_x = device_mouse_x_to_gui(0)
var _gui_mouse_y = device_mouse_y_to_gui(0)

if collision_point(_gui_mouse_x, _gui_mouse_y, id, false, false) 
   and mouse_check_button_pressed(mb_left) {
	holded = true
} else if mouse_check_button_released(mb_left) instance_destroy()