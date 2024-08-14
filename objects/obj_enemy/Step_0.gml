var _target_x = obj_character.x 
var _target_y = obj_character.y
var _current_speed = const_speed * global.t

if place_meeting(x, y, obj_character) {
	obj_character.const_speed = 0	
} else {
	move_towards_point(_target_x, _target_y, _current_speed)
}
