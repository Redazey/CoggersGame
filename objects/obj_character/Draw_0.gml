draw_self()

draw_sprite_ext(spr_weapon_, 1, x, y+8, 1, rotate, mouse,c_white, 1)

if global.t != 0 {
if mouse_check_button_pressed(mb_left) && reload <= 0
{
	repeat(100)
	{
		
		with( instance_create_depth(x + lengthdir_x(-25,mouse), y+8+ lengthdir_y(-25,mouse), 9, obj_bullet))
		{
			direction = other.mouse+random_range(-60, 60)
			image_angle = direction
			speed = 50 -random_range(-30, 30)
		}
	}
	
	reload = 10
}

reload--
}

 