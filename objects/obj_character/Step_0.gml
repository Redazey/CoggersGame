if global.t != 0 {
var _key_up = keyboard_check(ord("W")) or keyboard_check(vk_up)
var _key_down = keyboard_check(ord("S")) or keyboard_check(vk_down)
var _key_right = keyboard_check(ord("D")) or keyboard_check(vk_right)
var _key_left = keyboard_check(ord("A")) or keyboard_check(vk_left)

var _x_spd = _key_right - _key_left
var _y_spd = _key_down - _key_up
var _current_speed = const_speed * global.t

#region Движение персонажа
	// Проверяем, не столкнулись ли мы со стеной
	if place_meeting(x + _x_spd * _current_speed, y, obj_wall) {
		_x_spd = 0
	}
	if place_meeting(x, y + _y_spd * _current_speed, obj_wall) {
		_y_spd = 0
	}

	// Двигаемся
	var _movement_input = (_x_spd != 0) or (_y_spd != 0)
	if _movement_input {
		scr_move(_x_spd, _y_spd, _current_speed)
	}

	// Горизонтальные спрайты
	if _x_spd < 0 {
		sprite_index=spr_main_lmove
	}
	if _x_spd > 0 {
		sprite_index=spr_main_rmove
	}
	
	// Стоим на месте
	if _x_spd == 0 && _y_spd == 0 && sprite_index == spr_main_rmove {
		sprite_index=spr_main_ridle
	}
	if _x_spd == 0 && _y_spd == 0 && sprite_index == spr_main_lmove {
		sprite_index=spr_main_lidle
	}
#endregion

var _imx = sign(mouse_x-x)
if _imx = 0 { _imx = 1 } 
rotate = _imx

mouse = point_direction(x, y-6, mouse_x, mouse_y)
}


	
