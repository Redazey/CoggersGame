/// @description Insert description here
// You can write your code in this editor
var _key_up = keyboard_check(ord("W")) or keyboard_check(vk_up)
var _key_down = keyboard_check(ord("S")) or keyboard_check(vk_down)
var _key_right = keyboard_check(ord("D")) or keyboard_check(vk_right)
var _key_left = keyboard_check(ord("A")) or keyboard_check(vk_left)

var _last_x = x
var _last_y = y

var _movement_input = (_key_right - _key_left != 0) or (_key_down - _key_up != 0)
if _movement_input {
	scr_move(_key_right - _key_left, _key_down - _key_up)
}

if (x - _last_x) < 0 {
	sprite_index=spr_hina_lmove		
} else if x - _last_x == 0 && y - _last_y == 0 {
	sprite_index=spr_hina_ridle
} else {
	sprite_index=spr_hina_rmove
}
