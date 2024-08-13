function scr_sound_btn_switch(_gui_mouse_x, _gui_mouse_y, _audio_group){
	if audio_group_get_gain(_audio_group) != 0 {
		sprite_index=spr_soundbox
	} else if audio_group_get_gain(_audio_group) == 0 {
		sprite_index=spr_sounbox_checked
	}

	if instance_position(_gui_mouse_x, _gui_mouse_y, self) and mouse_check_button_pressed(mb_left){
		if audio_group_get_gain(_audio_group) != 0 {
			audio_group_set_gain(_audio_group, 1, 0)
		} else if audio_group_get_gain(_audio_group) == 0 {
			audio_group_set_gain(_audio_group, 1, 0)
		}
		
		audio_play_sound(snd_btn_click, 1, false)
	}
}