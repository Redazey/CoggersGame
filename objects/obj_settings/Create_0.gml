buttons = [
	obj_btn_fullscreen,
	obj_btn_sound, 
	obj_btn_snd_ost,
	obj_btn_snd_effects,
	obj_btn_snd_interface
]

elems = [
	obj_txt_fullscreen,
	obj_txt_sound,
	obj_txt_snd_ost,
	obj_txt_snd_effects,
	obj_txt_snd_interface
]

var _menu_height = (array_length(elems) * (menu_valign) + array_length(elems) * (menu_valign)) / 2
var _start_y = camera_height / 2 - _menu_height

// рисуем элементы интерфейса
for (var _i = 0; _i < array_length(buttons); _i++) {
	instance_create_layer(
		camera_width / 3,
		_start_y + menu_valign + (menu_valign * 2) * _i,
		"Instances", 
		buttons[_i]
	)
}

// рисуем текст
for (var _i = 0; _i < array_length(elems); _i++) {
	instance_create_layer(
		camera_width / 3,
		_start_y + (menu_valign * 2) * _i,
		"Instances", 
		elems[_i]
	)
}

instance_create_layer(
	camera_width / 20,
	camera_height / 20,
	"Instances", 
	obj_btn_back_menu
)