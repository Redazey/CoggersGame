var _bounce_bullet = part_type_create()

part_type_direction(_bounce_bullet, 0, 0, 0, 180)
part_type_speed(_bounce_bullet, 1, 1.5, -0.2, 0.5)
part_type_shape(_bounce_bullet, pt_shape_pixel)
part_type_life(_bounce_bullet, 180, 190)
part_type_size(_bounce_bullet, 2.5, 2.5, 0, 0)
part_type_color3(_bounce_bullet, #f7fa00, #d457cf, #7c3e8f)
part_type_alpha3(_bounce_bullet, 1, 0.2, 0.1)

global.pt_bounce_blt = _bounce_bullet