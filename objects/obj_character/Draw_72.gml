if holding_gun and !array_contains(global.non_game_rooms, room) {
	current_gun.x = x-4*sign(rotate)
	current_gun.y = y-2
	current_gun.image_angle = mouse
	current_gun.image_yscale = image_xscale
	
	var _imy = sign(mouse_y-y)
	if mouse_x-x > -30 and mouse_x-x < 30 and _imy < 0 {
		current_gun.depth = depth + 1
	} else current_gun.depth = depth - 1	
}

 