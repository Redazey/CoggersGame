if place_meeting(x, y, obj_entity) and closed {
	dir = sign(obj_entity.x - x)
	dir *= sign(obj_entity.y - y)

    force = force_multi * dir
}
if (place_meeting(x, y, obj_controller.col_tilemap)) {
    force = 0
	closed = false
}

force *= force_slow;
image_angle += force;