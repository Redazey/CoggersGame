var _walls = global.col_tilemap
var _head_x = x + lengthdir_x(speed, direction)
var _head_y = y + lengthdir_y(speed, direction)

if place_meeting(_head_x, _head_y, _walls) {
	
	const_speed = speed
	
	var _distance_to_wall = scr_min_dist(_head_x, _head_y, _walls)
	x = _distance_to_wall[0]
	y = _distance_to_wall[1]
	
	var _dif = angle_difference(360, direction)
	var _x = x + lengthdir_x(4, (_dif + 180))
	var _y = y + lengthdir_y(4, (_dif + 180))
	
	if place_meeting(_x, _y, _walls) {
		collided_wall_dir = "horizontal"
	} else collided_wall_dir = "vertical"
	
	speed = 0
	
	collided = true	
}