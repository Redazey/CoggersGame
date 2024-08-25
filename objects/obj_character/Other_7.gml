if sprite_index == sMainStop {
	sprite_index = sMainIdle
	need_to_stop = false
} 
if sprite_index == sMainMove {
	need_to_stop = true
}