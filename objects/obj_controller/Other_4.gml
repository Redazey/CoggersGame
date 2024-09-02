// активириуем камеру и перемещаем её на координаты игрока
view_enabled = true
view_visible[0] = true

// изменяем разрешение комнаты и экрана в зависимости от выбранных настроек 
room_height = screen_height
room_width = screen_width

surface_resize(application_surface, room_width, room_height)
display_set_gui_size(room_width, room_height)
window_set_size(room_width, room_height)

alarm[0] = 1

if !array_contains(global.non_game_rooms, global.last_room) or global.last_room == rm_menu {
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
global.col_tilemap = layer_tilemap_get_id("collision_tiles")
}
