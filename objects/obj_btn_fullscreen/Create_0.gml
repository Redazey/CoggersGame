event_inherited();

button_click = function() {
	if window_get_fullscreen() {
		sprite_index=spr_checkbox
		window_set_fullscreen(false)
	} else {
		sprite_index=spr_checkbox_checked
		window_set_fullscreen(true)
	}
	
	// обновляем карту колизии 
	global.col_tilemap = layer_tilemap_get_id("collision_tiles")

	scr_resize()
	
	audio_play_sound(snd_btn_click, 1, false)
}
