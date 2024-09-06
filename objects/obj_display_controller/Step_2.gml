// двжиение камеры за целью камера
if !array_contains(global.non_game_rooms, room) {
if (cam_follow != noone) {
	x_to = cam_follow.x
	y_to = cam_follow.y
}

x += (x_to - x) / 25
y += (y_to - y) / 25

camera_set_view_pos(
	view_camera[0],
	x - (camera_width * 0.5),
	y - (camera_height * 0.5)
)
}