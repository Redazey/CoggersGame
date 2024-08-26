// Управление и скорость
const_speed = 4
need_to_stop = false
step_played = false

// Анимации
assets = {
	// стандартные
	move: {
		profile: noone,
		up: noone,
		down: noone
	},
	idle: {
		profile: noone,
		up: noone,
		down: noone
	},
	
	// с оружием в руках
	move_gun: {
		profile: noone,
		up: noone,
		down: noone
	},
	idle_gun: {
		profile: noone,
		up: noone,
		down: noone
	},
}

current_set = {
	move: assets.move,
	idle: assets.idle
}

// Стрельба
holding_gun = noone
reload = 0
bullets = 6 //"10" колличество пуль