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

var _win_x = window_get_width()
var _win_y = window_get_height()

var _y_align = 40
var _menu_height = (array_length(elems) * (_y_align) + array_length(elems) * (_y_align)) / 2
var _start_y = _win_y / 2 - _menu_height

// рисуем элементы интерфейса
for (var _i = 0; _i < array_length(buttons); _i++) {
	instance_create_layer(
		_win_x / 3,
		_start_y + _y_align + (_y_align * 2) * _i,
		"Instances", 
		buttons[_i]
	)
}

// рисуем текст
for (var _i = 0; _i < array_length(elems); _i++) {
	instance_create_layer(
		_win_x / 3,
		
		_start_y + (_y_align * 2) * _i,
		"Instances", 
		elems[_i]
	)
}

instance_create_layer(
	_win_x / 20,
	_win_y / 20,
	"Instances", 
	obj_btn_back_menu
)