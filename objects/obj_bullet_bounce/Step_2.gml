var _walls = global.col_tilemap

if collided {
	var _dif = angle_difference(360, direction)
	var _x = x + lengthdir_x(4, (_dif + 180))
	var _y = y + lengthdir_y(4, (_dif + 180))
	
	direction = _dif - 180
	
	if place_meeting(_x, _y, _walls) {
		direction = _dif
	}
	// прибавляем отскок
	bounce_counter++
	
	speed = const_speed
	collided = false
	
	// очищаем партиклы что бы не было "хвоста" после стоклкновения
} else {
	part_particles_create(global.part_sys, x, y, global.pt_bounce_blt, 1)
}