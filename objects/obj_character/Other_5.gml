if (!instance_exists(obj_data_carrier)) {
	instance_create_depth(0, 0, 0, obj_data_carrier)
}

instance_destroy(current_gun)
current_gun = noone

// сюда добавляем дату, которую мы хотим перенести в некст руму
obj_data_carrier.enterance = enterance
// -----------
