// двжиение камеры за целью камера

if !array_contains(global.non_game_rooms, room) {
if (global.cam_follow != noone) {
	x_to = global.cam_follow.x
	y_to = global.cam_follow.y
}

x += (x_to - x) / 25
y += (y_to - y) / 25

camera_set_view_pos(
	view_camera[0],
	x - (global.cam_width*0.5),
	y - (global.cam_height*0.5)
)
}