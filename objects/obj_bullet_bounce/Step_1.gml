const_speed = speed

var _walls = global.col_tilemap

var _head_x = x + lengthdir_x(speed, direction)
var _head_y = y + lengthdir_y(speed, direction)

if place_meeting(_head_x, _head_y, _walls) and bounce_counter < 2 {
	// рассчитываем угол отражения (проклянет бог геометрию)
	var _distance_to_wall = scr_min_dist(_head_x, _head_y, _walls)
	x = _distance_to_wall[0]
	y = _distance_to_wall[1]
	speed = 0
	collided = true	
}
if bounce_counter >= 2 instance_destroy()
