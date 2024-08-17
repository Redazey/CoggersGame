event_inherited();

button_click = function() {
	scr_unpause()
	
	audio_play_sound(snd_btn_click, 1, false)
	room_goto(rm_menu)
}