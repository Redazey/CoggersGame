if instance_exists(obj_character) {
if current_x != camera_width and global.t != 0 {
	// рисуем снизу вверх, это точка на которой мы рисуем сейчас
	// после каждого отрисованного спрайта мы прибавляем к ней v_align + высоту спрайта * gui_scale
	var _drawing_y = 0
	var _drawing_x = current_x
	#macro ui_border 7
	
	#region Рисуем задний фон
	
	draw_sprite(sBG_recoil, 0, _drawing_x, _drawing_y)
	
	#endregion
	
	_drawing_y += v_align + ui_border
	
	#region рисуем барабан
	
	_drawing_x += ui_border + h_align
	
	draw_sprite_ext(
		sCylinder, 0, 
		_drawing_x, 
		_drawing_y, 
		scale, scale, 0, 
		c_white, 1
	)

	// рисуем пули в барабане
	for (var _i=0; _i < array_length(obj_character.bullets); _i++) {
		var _debug = obj_character.bullets[_i]
		if obj_character.bullets[_i] == 0 continue
		draw_sprite_ext(
			obj_character.bullets[_i], 0,
			_drawing_x + bullets_cords[_i][0] * scale,
			_drawing_y + bullets_cords[_i][1] * scale,
			scale, scale, 0,
			c_white, 1
		)
	}
	
	// закоменченный кусок кода, что бы отрисовать хитбоксы дырок для патрон (дэбаг)
	//for (var _i=0; _i < array_length(bullets_cords); _i++) {
	//	var _rad = (sprite_get_width(sBullet) / 2) * scale
	//	var _start_x = camera_width - h_align - (sprite_get_width(sCylinder) - bullets_cords[_i][0]) * scale
	//	var _start_y = v_align + ui_border + bullets_cords[_i][1] * scale
	//	draw_circle_color(_start_x, _start_y, _rad, c_red, c_blue, true)
	//}
	
	#endregion
	
	_drawing_y += v_align + sprite_get_height(sCylinder) * scale
	
	#region рисуем пули
	
	_drawing_x += (sprite_get_width(sBullet_Choice) / 2) * scale
	
	for (var _i=0; _i < array_length(unlocked_bullets); _i++) {
		if !instance_exists(unlocked_bullets[_i]) {
			instances[_i] = instance_create_layer(
				_drawing_x,
				_drawing_y,
				"gui_instances",
				unlocked_bullets[_i]
			)
		} else if !instances[_i].holded {
			instances[_i].x = _drawing_x
			instances[_i].y = _drawing_y	
		}
		_drawing_y += v_align + sprite_get_height(sBullet_Choice) * scale
	}
	
	#endregion
}
}
draw_self()