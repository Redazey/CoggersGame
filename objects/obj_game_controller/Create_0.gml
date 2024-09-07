// если 0 - время идет, если 1 - время остановлено
global.pause = 0
global.t = 1
global.c_time = current_time

global.layers = []
buttons = [obj_btn_resume, obj_btn_settings, obj_btn_back_main]

// неигровые комнаты
global.non_game_rooms = [rm_loading, rm_menu, rm_settings]

// блоки колизии
global.col_tilemap = noone

// партиклы
global.part_sys = part_system_create()
part_system_depth(global.part_sys, 1)

// все переменные, которые нужно будет сохранять перед выходом из игры
globalvar unlocked_bullets;
unlocked_bullets = [obj_recoil_bullet, obj_recoil_bullet_bounce]

// интерфейс
globalvar menu_valign;
menu_valign = 30