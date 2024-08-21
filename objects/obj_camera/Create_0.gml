#macro CAMERA_WIDTH 640
#macro CAMERA_HEIGHT 360
#macro CAMERA_SCALE 3

global.camera = camera_create_view(0, 0, CAMERA_WIDTH, CAMERA_HEIGHT, 0, obj_character, 4, 4, CAMERA_WIDTH, CAMERA_HEIGHT )

//camera_set_view_border(global.camera, CAMERA_WIDTH, CAMERA_HEIGHT)
//camera_set_view_target(global.camera, obj_character)
//camera_set_view_speed(global.camera, 4, 4)

view_enabled = true
view_visible[0] = true
view_set_camera(0, global.camera)


window_set_size(CAMERA_WIDTH * CAMERA_SCALE, CAMERA_HEIGHT * CAMERA_SCALE)
surface_resize(application_surface, CAMERA_WIDTH * CAMERA_SCALE, CAMERA_HEIGHT * CAMERA_SCALE )
var _window_width = CAMERA_WIDTH * CAMERA_SCALE
var _window_height =  CAMERA_HEIGHT * CAMERA_SCALE
window_set_position(display_get_width() / 2 - _window_width / 2, display_get_height() / 2 - _window_height / 2)
