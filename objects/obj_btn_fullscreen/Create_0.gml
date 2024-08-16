event_inherited();

button_click = function() {
	if window_get_fullscreen() {
		sprite_index=spr_checkbox
		window_set_fullscreen(false)
	} else {
		sprite_index=spr_checkbox_checked
		window_set_fullscreen(true)
	}
	
	audio_play_sound(snd_btn_click, 1, false)
}
