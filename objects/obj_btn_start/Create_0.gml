event_inherited();

button_click = function() {
	audio_play_sound(snd_btn_click, 1, false)
	room_goto(rm_game)
}