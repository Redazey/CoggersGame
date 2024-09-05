globalvar screen_width, screen_height, scale;

ideal_width = 640
ideal_height = 360
scale = 2
 
screen_width = ideal_width * scale
screen_height = ideal_height * scale

surface_resize(application_surface, screen_width, screen_height)
display_set_gui_size(screen_width, screen_height)
window_set_size(screen_width, screen_height)
