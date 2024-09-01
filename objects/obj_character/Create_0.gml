/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

rotate = 0
// Управление и скорость
mouse = 0
need_to_stop = false

// Анимации
assets = {
	// стандартные
	move: {
		profile: sMain_Move_Profile,
		up: sMain_Move_Up,
		down: sMain_Move_Down
	},
	idle: {
		profile: sMain_Idle_Profile,
		up: sMain_Idle_Up,
		down: sMain_Idle_Down
	},
	stop: sMain_Stop,
	
	// с оружием в руках
	move_gun: {
		profile: sMain_Move_Profile_Gun,
		up: sMain_Move_Up_Gun,
		down: sMain_Move_Down_Gun
	},
	idle_gun: {
		profile: sMain_Idle_Profile_Gun,
		up: sMain_Idle_Up_Gun,
		down: sMain_Idle_Down_Gun
	},
	stop_gun: sMain_Stop_Gun
}

current_set = {
	move: assets.move,
	idle: assets.idle,
	stop: assets.stop
}

// Стрельба
holding_gun = true
current_gun = noone
reload = 0
reload_speed = 5
bullet_speed = 15

// Перезарядка
reloading = false
bullets = [sBullet_bounce, sBullet_bounce, sBullet_bounce, sBullet_bounce, sBullet_bounce, sBullet_bounce, sBullet_bounce]
unlocked_bullets = [obj_recoil_bullet, obj_recoil_bullet_bounce]