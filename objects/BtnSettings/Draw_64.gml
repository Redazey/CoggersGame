draw_self()

if instance_position(gui_mouse_x, gui_mouse_y, self)
{
	scrOutlinedText(
		x - 10, y, 
		c_white, 
		">", 
		depth, PixyRussianF1, fa_left, fa_middle
	)
}

scrOutlinedText(
	x, y, 
	c_white, 
	"Settings", 
	depth, PixyRussianF1, fa_left, fa_middle
)