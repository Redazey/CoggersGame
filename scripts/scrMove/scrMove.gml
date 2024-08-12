// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrMove(x2, y2){
	movement_dir = point_direction(0, 0, x2, y2)
	movement_input = (key_right - key_left != 0) or (key_down - key_up != 0)

	if (movement_input) {
		x += lengthdir_x(movement_speed, movement_dir)
		y += lengthdir_y(movement_speed, movement_dir)
	}

}