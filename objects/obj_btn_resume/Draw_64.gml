draw_self()

if instance_position(gui_mouse_x, gui_mouse_y, self)
{
	scr_outlined_text(
		x - 10, y, 
		c_white, 
		">", 
		depth, fnt_pixy_f1, fa_left, fa_middle
	)
}

scr_outlined_text(
	x, y, 
	c_white,
	"Resume", 
	depth, fnt_pixy_f1, fa_left, fa_middle
)
