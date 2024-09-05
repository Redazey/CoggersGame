if collided {
	depth = -y
	
	collision_func()
	
	// Спавним партиклы столкновения со стеной
	var _particles_dir
	if collided_wall_dir == "horizontal" {
		_particles_dir = 90 * -sign(direction-180)
	} else if (direction < 90 and direction >= 0) or
			  (direction <= 360 and direction > 270) {
		_particles_dir = 0
	} else if (direction > 90 and direction < 270) {
		_particles_dir = 180
	}
	
	part_type_direction(global.pt_land_blt, _particles_dir, _particles_dir, 0, 90)
	part_particles_create(global.part_sys, x, y, global.pt_land_blt, 7)
	
	speed = const_speed
	collided = false
} else {
	part_particles_create(global.part_sys, x, y, global.pt_bounce_blt, 1)
}