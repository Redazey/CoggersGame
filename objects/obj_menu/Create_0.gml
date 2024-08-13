buttons = [obj_btn_start, obj_btn_settings, obj_btn_exit]

for (var _i = 0; _i < array_length(buttons); ++_i) {

	instance_create_layer(
	room_width / 20,
	room_height / 2 + 50 * _i,
	"Instances", 
	buttons[_i]
	)
}