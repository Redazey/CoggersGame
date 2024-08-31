// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_min_dist(_head_x, _head_y, _walls){
	var _speed = speed
	while place_meeting(_head_x, _head_y, _walls) {
		_speed -= 0.1
		_head_x = x + lengthdir_x(_speed, direction)
		_head_y = y + lengthdir_y(_speed, direction)
	}
	return [_head_x, _head_y]
}