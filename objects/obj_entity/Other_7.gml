if sprite_index == current_set.stop {
	sprite_index = current_set.idle.profile
	need_to_stop = false
} 
if sprite_index == current_set.move.profile {
	need_to_stop = true
}