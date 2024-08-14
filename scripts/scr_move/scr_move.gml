function scr_move(_x, _y, _speed){
	movement_dir = point_direction(0, 0, _x, _y)

	x += lengthdir_x(_speed, movement_dir)
	y += lengthdir_y(_speed, movement_dir)
}