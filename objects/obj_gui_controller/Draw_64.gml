if instance_exists(obj_character) {
if obj_character.reloading and global.t != 0 {
	// рисуем снизу вверх, это точка на которой мы рисуем сейчас
	// после каждого отрисованного спрайта мы прибавляем к ней v_align + высоту спрайта * gui_scale
	var _drawing_point = 0
	
	#region Рисуем задний фон
	
	
	
	#endregion
	
	_drawing_point += v_align
	
	#region рисуем барабан
	
	var _drum_x = screen_width - h_align - sprite_get_width(sBaraban) * scale
	
	draw_sprite_ext(
		sBaraban, 0, 
		_drum_x, 
		_drawing_point, 
		scale, scale, 1, 
		c_white, 1
	)

	// рисуем пули в барабане
	for (var _i=0; _i < array_length(obj_character.bullets); _i++) {
		var _debug = obj_character.bullets[_i]
		if obj_character.bullets[_i] == 0 continue
		draw_sprite_ext(
			obj_character.bullets[_i], 0,
			_drum_x + bullets_cords[_i][0] * scale,
			_drawing_point + bullets_cords[_i][1] * scale,
			scale, scale, 1,
			c_white, 1
		)
	}
	
	#endregion
	
	_drawing_point += v_align + sprite_get_height(sBaraban) * scale
	
	#region рисуем пули
	
	var _bullets_x = screen_width - h_align - 24 * scale
	
	for (var _i=0; _i < array_length(unlocked_bullets); _i++) {
		if !instance_exists(unlocked_bullets[_i]) {
			instances[_i] = instance_create_layer(
				_bullets_x,
				_drawing_point,
				"gui_instances",
				unlocked_bullets[_i]
			)

			_drawing_point += v_align + sprite_get_height(sBullet_Choice) * scale
		}
	}
	
	#endregion
}
}
draw_self()