// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_fps_speed(_speed){
	return _speed * 60 / 1000 * (current_time - global.c_time)
}