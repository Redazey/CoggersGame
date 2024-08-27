if place_meeting(x, y, obj_entity) and closed {
	dir = phy_formula
    force = force_multi * dir
}
if image_angle <= -90 or image_angle >= 90 {
    force = 0
	closed = false
}

force *= force_slow;
image_angle += force;