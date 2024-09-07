// разрешение экрана
globalvar screen_width, screen_height, scale;

ideal_width = 0
ideal_height = 360

scale = 2

var _display_width = display_get_width()
var _display_height = display_get_height()

aspect_ratio = _display_width / _display_height
ideal_width = round(ideal_height * aspect_ratio)

if ideal_width % 2 == 1 {
	ideal_width++
}
 
screen_width = ideal_width * scale
screen_height = ideal_height * scale

// камера
globalvar camera, camera_width, camera_height, cam_follow;

camera_width = screen_width * 0.5
camera_height = screen_height * 0.5

cam_follow = obj_character

x_to = x
y_to = y

scr_resize()