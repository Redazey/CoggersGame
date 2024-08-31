if !array_contains(global.non_game_rooms, global.last_room) {
if (instance_exists(obj_data_carrier)) {
	// сюда добавляем дату, которую мы хотим перенести в некст руму
	enterance = obj_data_carrier.enterance
	// -----------
	instance_destroy(obj_data_carrier)
	
	if (instance_exists(enterance)) {
		x = enterance.x
		y = enterance.y
	}
}
}