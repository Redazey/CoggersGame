
draw_sprite_ext(spr_gun, 1, x, y-6, 1, rotate, mouse,c_white, 1)
if mouse_check_button_pressed(mb_left) && reload <= 0
{
	repeat(6)
	{
		
		with( instance_create_depth(x + lengthdir_x(-11,mouse), y-6 + lengthdir_y(6,mouse), 9, obj_bullet))
		{
			direction = other.mouse+random_range(-6,6)
			image_angle = direction
			speed = 20+random_range(-3,3)
		}
	}
	reload = 60
}
reload--