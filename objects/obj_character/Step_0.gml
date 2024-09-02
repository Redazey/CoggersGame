if !array_contains(global.non_game_rooms, room) {
if current_gun == noone {
	current_gun = instance_create_depth(x-4*sign(rotate), y-2, -(y-2), obj_gun_main)
}
}

if global.t != 0 {
depth = -(y - sprite_height/2 + 13)
	
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
	var _tilemap = global.col_tilemap
	
	if place_meeting(_x_formula, y, _tilemap) {
		_x_spd = 0
	}
	if place_meeting(x, _y_formula, _tilemap) {
		_y_spd = 0
	}

	// Двигаемся
	if (_x_spd != 0) or (_y_spd != 0) {
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
		
		// Смотрим вниз
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

			// Смотрим вверх
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
		
		if (sprite_index == current_set.move.profile || sprite_index == current_set.stop) and need_to_stop {
			sprite_index = current_set.stop
			// Смотрим вниз
		} else if mouse_x-x > -30 and mouse_x-x < 30 and _imy > 0 {
			sprite_index = current_set.idle.down
			current_gun.depth = depth + 1
			// Смотрим вверх
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

#region Стрельба
if mouse_check_button_pressed(mb_left) and !reloading and holding_gun and reload <= 0 and array_length(bullets) > 0 {
	var _cur_bullet = noone
	repeat(1)
	{
		current_gun.image_speed = 1
		
		audio_play_sound(sndGun, 1, false)

		switch array_first(bullets) {
			case sBullet_bounce: 
				_cur_bullet = obj_bullet_bounce
				break
			default: 
				_cur_bullet = obj_bullet
		}
		var _bullet_speed = bullet_speed
		with(instance_create_depth(
			x + lengthdir_x(10, mouse),
			y + lengthdir_y(10, mouse), 
			-5, 
			_cur_bullet)
		)
		{
			direction = other.mouse
			image_angle = direction
			speed = _bullet_speed
		}
	}
	/*
	for (var _i = 0; _i < array_length(bullets); _i++) {
		if bullets[_i] == bullets[0] {
			array_delete(bullets, _i, 1)
			break
		}
	}*/
	reload = reload_speed
}
reload--
#endregion

#region Перезарядка
	if keyboard_check_pressed(ord("R")) and !reloading reloading = true
	else if keyboard_check_pressed(ord("R")) and reloading reloading = false
#endregion
}
