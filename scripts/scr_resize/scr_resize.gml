// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_resize(){
	surface_resize(application_surface, camera_width, camera_height)
	window_set_size(screen_width, screen_height)
	display_set_gui_size(camera_width, camera_height)
}