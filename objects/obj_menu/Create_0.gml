buttons = [obj_btn_start, obj_btn_settings, obj_btn_exit]

var _y_align = 40
var _menu_height = (array_length(buttons) * (_y_align)) / 2
var _start_y = screen_height * 0.9 - _menu_height

for (var _i = 0; _i < array_length(buttons); _i++) {

	instance_create_layer(
	screen_width / 20,
	_start_y + _y_align * _i,
	"Instances", 
	buttons[_i]
	)
}