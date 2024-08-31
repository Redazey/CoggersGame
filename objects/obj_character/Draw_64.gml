if reloading {
// координаты пуль в барабане
var _bullets_cords = [
	[16, 4],
	[24, 8],
	[26, 17],
	[21, 24],
	[11, 24],
	[6, 17],
	[8, 8]
]

var _baraban_x = global.cam_width * global.scale - 32 * global.gui_scale
var _baraban_y = global.cam_height * global.scale - 32 * global.gui_scale

// рисуем барабан
draw_sprite_ext(
	sBaraban, 0, 
	_baraban_x, 
	_baraban_y, 
	global.gui_scale, global.gui_scale, 1, 
	c_white, 1
)

// рисуем пули в барабане
for (var _i=0; _i < array_length(bullets); _i++) {
	draw_sprite_ext(
		bullets[_i], 0, 
		_baraban_x + _bullets_cords[_i][0] * global.gui_scale, 
		_baraban_y + _bullets_cords[_i][1] * global.gui_scale, 
		global.gui_scale, global.gui_scale, 1, 
		c_white, 1
	)
}

// рисуем пули для интерфейса
for (var _i=0; _i < array_length(unlocked_bullets); _i++) {
	draw_sprite_ext(
		unlocked_bullets[_i], 0, 
		_baraban_x, 
		_baraban_y - ((10 * (_i + 1)) * global.gui_scale), 
		global.gui_scale, global.gui_scale, 1, 
		c_white, 1
	)
}
}