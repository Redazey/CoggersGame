if !array_contains(global.non_game_rooms, room) {
	var tilemap = global.top_tilemap;
	if tilemap != 0 {
		var _char_x = obj_character.x
		var _char_y =  obj_character.y
		var _tile_size = 16
		var _light_range = 100
	
		for (var _angle=0; _angle <= 360; _angle++) {
			for (var _len=0; _len <= _light_range; _len++) {
				var _xx = _char_x + lengthdir_x(_len, _angle)
				var _yy = _char_y + lengthdir_y(_len, _angle)
				var tile = tilemap_get(tilemap, _xx / _tile_size, _yy / _tile_size);
					
				if tile != 0 {
					var _px1 = _xx
					var _py1 = _yy
					
					var _px2 = _px1 + lengthdir_x(1000, _angle)
					var _py2 = _py1 + lengthdir_y(1000, _angle)
					
					
					draw_set_color(c_black)
					draw_line_width(_px1, _py1, _px2, _py2, 2)
				}
			}
		}
	}
}