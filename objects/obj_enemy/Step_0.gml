var target_x = obj_character.x; 
var target_y = obj_character.y; 
//phy_position_x += sign(obj_character.x - x) * speed_enemy
//phy_position_y += sign(obj_character.y - y) * speed_enemy
 
move_towards_point(target_x, target_y, speed_enemy);
//x = lerp(x, target_x, speed_enemy); 
//y = lerp(y, target_y, speed_enemy);