draw_self()

if holding_gun {
draw_sprite_ext(sMainGun, 0, x-3*sign(rotate), y-3, 1, rotate, mouse, c_white, 1)

if global.t != 0 {
if mouse_check_button_pressed(mb_left) and reload <= 0 and bullets > 0
{
	repeat(1)
	{
		audio_play_sound(sndGun, 1, false)
		
		with(instance_create_depth(
			x + lengthdir_x(50, mouse),
			y + lengthdir_y(50, mouse), 
			9, 
			obj_bullet)
		)
		{
			direction = other.mouse
			image_angle = direction
			speed = 25
		}
	}
	
	bullets -= 1
	reload = 5
}

reload--
}
}
 