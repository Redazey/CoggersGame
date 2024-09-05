if !array_contains(global.non_game_rooms, room) {
if global.pause == 0 {
	global.pause = 1
} else {
	scr_unpause()
}
}