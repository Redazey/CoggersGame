/// @description Insert description here
// You can write your code in this editor
key_up = keyboard_check(ord("W")) or keyboard_check(vk_up)
key_down = keyboard_check(ord("S")) or keyboard_check(vk_down)
key_right = keyboard_check(ord("D")) or keyboard_check(vk_right)
key_left = keyboard_check(ord("A")) or keyboard_check(vk_left)

last_x = x
last_y = y

scrMove(key_right - key_left, key_down - key_up)

if (x - last_x) < 0 {
	sprite_index=HinaLMove		
} else if x - last_x == 0 && y - last_y == 0 {
	sprite_index=HinaIdle_1
} else {
	sprite_index=HinaRMove
}
