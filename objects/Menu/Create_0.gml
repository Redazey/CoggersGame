buttons = [BtnStart, BtnSettings, BtnExit]

for (var i = 0; i < array_length(buttons); ++i) {

	instance_create_layer(
	room_width / 20,
	room_height / 2 + 50 * i,
	"Instances", 
	buttons[i]
	)
}