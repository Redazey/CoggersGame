buttons = [obj_btn_start, obj_btn_settings, obj_btn_exit]

var _menu_height = (array_length(buttons) * (menu_valign)) / 2
var _start_y = camera_height * 0.9 - _menu_height

for (var _i = 0; _i < array_length(buttons); _i++) {

	instance_create_layer(
	camera_width / 20,
	_start_y + menu_valign * _i,
	"Instances", 
	buttons[_i]
	)
}