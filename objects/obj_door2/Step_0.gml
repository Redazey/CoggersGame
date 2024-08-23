if (place_meeting(x, y, obj_entity)) {
	dir = sign(obj_entity.x - x)
	dir *= sign(obj_entity.y - y)

    force = force_multi * dir
} else if (place_meeting(x, y, obj_controller.col_tilemap)) {
    force = 0
}

force *= force_slow;
image_angle += force;