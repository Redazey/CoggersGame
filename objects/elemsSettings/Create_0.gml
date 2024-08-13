elems = [
	TxtFullscreen,
	BtnFullscreen,
	
	TxtSound,
	BtnSound, 
	
	TxtSoundOST,
	BtnSoundOST,
	
	TxtSoundEffects,
	BtnSoundEffects,
	
	TxtSoundInterface,
	BtnSoundInterface, 
]

for (var i = 0; i < array_length(elems); ++i) {

	instance_create_layer(
		room_width / 3,
		room_height / 3 + 45 * i,
		"Instances", 
		elems[i]
	)
}

instance_create_layer(
	room_width / 20,
	room_height / 20,
	"Instances", 
	BtnBackToMenu
)