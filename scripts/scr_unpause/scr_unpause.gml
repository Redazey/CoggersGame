// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_unpause() {
	for (var _i = 0; _i < array_length(global.layers); _i++) {
		instance_destroy(global.layers[_i])
	}
	
	room_persistent = false
	
	global.layers = []
	global.pause = 0
}