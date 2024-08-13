elems = [
	obj_txt_fullscreen,
	obj_btn_fullscreen,
	
	obj_txt_sound,
	obj_btn_sound, 
	
	obj_txt_snd_ost,
	obj_btn_snd_ost,
	
	obj_txt_snd_effects,
	obj_btn_snd_effects,
	
	obj_txt_snd_interface,
	obj_btn_snd_interface, 
]

for (var _i = 0; _i < array_length(elems); ++_i) {

	instance_create_layer(
		room_width / 3,
		room_height / 4 + 45 * _i,
		"Instances", 
		elems[_i]
	)
}

instance_create_layer(
	room_width / 20,
	room_height / 20,
	"Instances", 
	obj_btn_back_menu
)