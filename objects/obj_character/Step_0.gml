if global.t != 0 {
var _key_up = keyboard_check(ord("W")) or keyboard_check(vk_up)
var _key_down = keyboard_check(ord("S")) or keyboard_check(vk_down)
var _key_right = keyboard_check(ord("D")) or keyboard_check(vk_right)
var _key_left = keyboard_check(ord("A")) or keyboard_check(vk_left)

var _x_spd = _key_right - _key_left
var _y_spd = _key_down - _key_up
var _current_speed = const_speed * global.t

#region Движение и коллизия
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
#endregion

#region Анимация
    // Вычисляем положение мышки относительно персонажа
	var _imy = sign(mouse_y-y)
	var _imx = sign(mouse_x-x)
	
	// Двигаемся
	if _x_spd != 0 or _y_spd != 0 {
		
		// Смотрим вперед
		if mouse_x-x > -25 and mouse_x-x < 25 and _imy > 0 {
			sprite_index = spr_main_front_move

			// Смотрим назад
		} else if mouse_x-x > -25 and mouse_x-x < 25 and _imy < 0 {
			sprite_index = spr_main_back_idle

			// Смотрим вбок
		} else {
			sprite_index=spr_main_move
		}
	
		// Остановка / Стоим на месте
	} else if _x_spd == 0 && _y_spd == 0 {
		// Смотрим вперед
		if sprite_index == spr_main_move || sprite_index == spr_main_stop {
			sprite_index = spr_main_stop
		
		} else if mouse_x-x > -25 and mouse_x-x < 25 and _imy > 0 {
			sprite_index = spr_main_front_idle
			
			// Смотрим назад
		} else if mouse_x-x > -25 and mouse_x-x < 25 and _imy < 0 {
			sprite_index = spr_main_back_idle
		
			// Смотрим вбок
		} else {
			sprite_index=spr_main_idle
		}
	} 
	
	if _imx == 0 _imx = 1
	image_xscale = _imx
	rotate = _imx 

	mouse = point_direction(x, y-6, mouse_x, mouse_y)
#endregion
}


	
