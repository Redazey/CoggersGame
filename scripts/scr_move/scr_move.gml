function scr_move(_x, _y){
	movement_dir = point_direction(0, 0, _x, _y)

	x += lengthdir_x(movement_speed, movement_dir)
	y += lengthdir_y(movement_speed, movement_dir)
}