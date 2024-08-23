// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_resize(){
	// ресайз экрана

	room_height = global.cam_height * global.scale
	room_width = global.cam_width * global.scale

	surface_resize(application_surface, room_width, room_height)
	window_set_size(room_width, room_height)

	alarm[0] = 1
}