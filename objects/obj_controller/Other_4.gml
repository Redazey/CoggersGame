// активириуем камеру и перемещаем её на координаты игрока
view_enabled = true
view_visible[0] = true

if !array_contains(global.non_game_rooms, room) {
if (instance_exists(obj_data_carrier)) {
	// сюда добавляем дату, которую мы хотим перенести в некст руму
	var _enterance = obj_data_carrier.enterance
	// -----------
	
	if (instance_exists(_enterance)) {
		x = _enterance.x
		y = _enterance.y
	}
} else {
	x = obj_character.x
	y = obj_character.y
}

// обновляем карту колизии 
col_tilemap = layer_tilemap_get_id("collision_tiles")
}
