var _target_x = obj_character.x 
var _target_y = obj_character.y
var _current_speed = 0

if (point_distance(x, y, _target_x, _target_y) > melee_range) {
	_current_speed = const_speed * global.t
} else _current_speed = 0

move_towards_point(_target_x, _target_y, _current_speed)
