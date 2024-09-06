// активириуем камеру и перемещаем её на координаты игрока
view_enabled = true
view_visible[0] = true
camera = view_get_camera(0)

camera_set_view_size(camera, camera_width, camera_height)

if !array_contains(global.non_game_rooms, global.last_room) or
	(global.last_room == rm_menu and !array_contains(global.non_game_rooms, room)) {
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
}