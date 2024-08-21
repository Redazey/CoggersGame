room_height = display_get_height()
room_width = display_get_width()

surface_resize(application_surface, room_width, room_height)
window_set_size(room_width, room_height)

alarm[0] = 3