v_align = 5
h_align = 5
// координаты пуль в барабане
bullets_cords = [
	[16, 4],
	[24, 8],
	[26, 17],
	[21, 24],
	[11, 24],
	[6, 17],
	[8, 8]
]

globalvar bullet_sprites;

bullet_sprites = ds_map_create()

ds_map_add(bullet_sprites, obj_recoil_bullet, sBullet)
ds_map_add(bullet_sprites, obj_recoil_bullet_bounce, sBullet_bounce)

// инстансы для подчистки при закрытии интерфейса
instances = []

destroy_cords = [noone, -1, -1]