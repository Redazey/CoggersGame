/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

event_inherited();
bounce_counter = 0
collision_func = function() {
	if bounce_counter >= 2 instance_destroy()
	
	var _dif = angle_difference(360, direction)
	
	if collided_wall_dir == "horizontal"
		direction = _dif
	else 
		direction = _dif - 180
	
	bounce_counter++
}

