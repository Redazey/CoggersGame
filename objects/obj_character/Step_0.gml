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
	var _x_formula = x + _current_speed * _x_spd
	var _y_formula = y + _current_speed * _y_spd
	var _tilemap = obj_controller.col_tilemap
	
	if place_meeting(_x_formula, y, _tilemap) {
		_x_spd = 0
	}
	if place_meeting(x, _y_formula, _tilemap) {
		_y_spd = 0
	}

	// Двигаемся
	var _movement_input = (_x_spd != 0) or (_y_spd != 0)
	if _movement_input {
		scr_move(_x_spd, _y_spd, _current_speed)
	}
#endregion

if holding_gun == noone {
	current_set = {
		move: assets.move,
		idle: assets.idle,
		stop: assets.stop
	}
} else {
	current_set = {
		move: assets.move_gun,
		idle: assets.idle_gun,
		stop: assets.stop_gun
	}
}

#region Анимации
    // Вычисляем положение мышки относительно персонажа
	var _imy = sign(mouse_y-y)
	var _imx = sign(mouse_x-x)
	
	// Двигаемся
	if _x_spd != 0 or _y_spd != 0 {
		
		// Смотрим вперед
		if mouse_x-x > -30 and mouse_x-x < 30 and _imy > 0 {
			// проигрываем звук ходьбы
			if (int64(image_index) == 0 or int64(image_index) == 2) 
			and !step_played {
				audio_play_sound(sndStep, 1, false)
				step_played = true
			} else if int64(image_index) != 0 and int64(image_index) != 2 {
				step_played = false
			}
			
			sprite_index = current_set.move.down

			// Смотрим назад
		} else if mouse_x-x > -30 and mouse_x-x < 30 and _imy < 0 {
			// проигрываем звук ходьбы
			if (int64(image_index) == 0 or int64(image_index) == 2) 
			and !step_played {
				audio_play_sound(sndStep, 1, false)
				step_played = true
			} else if int64(image_index) != 0 and int64(image_index) != 2 {
				step_played = false
			}
			
			sprite_index = current_set.move.up

			// Смотрим вбок
		} else {
			// проигрываем звук ходьбы
			if (int64(image_index) == 3 or int64(image_index) == 8) 
			and !step_played {
				audio_play_sound(sndStep, 1, false)
				step_played = true
			} else if int64(image_index) != 3 and int64(image_index) != 8 {
				step_played = false
			}
			
			sprite_index=current_set.move.profile
		}
	
		// Остановка / Стоим на месте
	} else if _x_spd == 0 && _y_spd == 0 {
		// Смотрим вперед
		if (sprite_index == current_set.move.profile || sprite_index == current_set.stop) and need_to_stop {
			sprite_index = current_set.stop
		
		} else if mouse_x-x > -30 and mouse_x-x < 30 and _imy > 0 {
			sprite_index = current_set.idle.down
			
			// Смотрим назад
		} else if mouse_x-x > -30 and mouse_x-x < 30 and _imy < 0 {
			sprite_index = current_set.idle.up
		
			// Смотрим вбок
		} else {
			sprite_index = current_set.idle.profile
		}
	} 
	
	if _imx == 0 _imx = 1
	image_xscale = _imx
	rotate = _imx 

	mouse = point_direction(x, y-6, mouse_x, mouse_y)
#endregion
}