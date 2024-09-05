// global.t используем в формулах расчета текущего мувспида
global.t=1-global.pause

var _win_x = global.cam_width * scale
var _win_y = global.cam_height * scale

// Все, что связанно с паузой
if global.pause == 1 && array_length(global.layers) == 0 {
	var _y_align = 40
	var _menu_height = (array_length(buttons) * (_y_align)) / 2
	var _start_y = _win_y / 2 - _menu_height
	
	room_persistent = true

	for (var _i = 0; _i < array_length(buttons); _i++) {
		global.layers[_i] = instance_create_layer(
		_win_x / 20,
		_start_y + _y_align * _i,
		"Instances", 
		buttons[_i]
		)
	}
}