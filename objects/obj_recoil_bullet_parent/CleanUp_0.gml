var _mouse_x = device_mouse_x_to_gui(0)
var _mouse_y = device_mouse_y_to_gui(0)

if holded
	obj_gui_controller.destroy_cords = [self.object_index, _mouse_x, _mouse_y]
