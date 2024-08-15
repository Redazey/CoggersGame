// global.t используем в формулах расчета текущего мувспида
global.t=1-global.pause

// Все, что связанно с паузой
if global.pause == 1 && array_length(layers) == 0 {
	var _y_align = 40
	var _menu_height = (array_length(buttons) * (_y_align)) / 2
	var _start_y = room_height / 2 - _menu_height
	
	global.last_room = room
	room_persistent = true

	for (var _i = 0; _i < array_length(buttons); _i++) {
		layers[_i] = instance_create_layer(
		room_width / 20,
		_start_y + _y_align * _i,
		"Instances", 
		buttons[_i]
		)
	}
} else if global.pause == 0 {
	for (var _i = 0; _i < array_length(layers); _i++) {
		instance_destroy(layers[_i])
	}
	
	room_persistent = false
	
	layers = []
}