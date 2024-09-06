// global.t используем в формулах расчета текущего мувспида
global.t=1-global.pause

// Все, что связанно с паузой
if global.pause == 1 && array_length(global.layers) == 0 {
	var _y_align = 40
	var _menu_height = (array_length(buttons) * (_y_align)) / 2
	var _start_y = camera_height / 2 - _menu_height
	
	room_persistent = true

	for (var _i = 0; _i < array_length(buttons); _i++) {
		global.layers[_i] = instance_create_layer(
		camera_width / 20,
		_start_y + _y_align * _i,
		"Instances", 
		buttons[_i]
		)
	}
}