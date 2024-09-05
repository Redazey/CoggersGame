if instance_exists(obj_character) {
if obj_character.reloading and global.t != 0 {
	// передвигаем пули мышкой
	for (var _i=0; _i < array_length(instances); _i++) {
		if instance_exists(instances[_i]) {
			var _bullet = instances[_i]
			if _bullet.holded {
				_bullet.x = device_mouse_x_to_gui(0) - (sprite_get_width(_bullet.sprite_index) / 2) * scale
				_bullet.y = device_mouse_y_to_gui(0) - (sprite_get_height(_bullet.sprite_index) / 2) * scale
			} 
		}
	}

	if destroy_cords[0] != noone {
		// заряжаем пулю в барабан
		for (var _i=0; _i < array_length(bullets_cords); _i++) {
			var _rad = (sprite_get_width(sBullet) / 2) * scale
			var _start_x = screen_width - h_align  - (sprite_get_width(sBaraban) - bullets_cords[_i][0]) * scale
			var _start_y = v_align + bullets_cords[_i][1] * scale
	
			if (destroy_cords[1] > _start_x - _rad and destroy_cords[1] < _start_x + _rad) and
			   (destroy_cords[2] > _start_y - _rad and destroy_cords[2] < _start_y + _rad) {
				var _bullet = ds_map_find_value(bullet_sprites, destroy_cords[0])
				
				array_delete(obj_character.bullets, _i, 1)
				array_insert(obj_character.bullets, _i, _bullet)
				
				destroy_cords[0] = noone
				exit
			}
		}
		destroy_cords[0] = noone
		exit
	}
} else if array_length(instances) > 0 {
	array_foreach(instances, instance_destroy)
	instances = []
}
}
