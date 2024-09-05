// если 0 - время идет, если 1 - время остановлено
global.pause = 0
global.t = 1
global.c_time = current_time

global.layers = []
buttons = [obj_btn_resume, obj_btn_settings, obj_btn_back_main]

// камера
global.cam_width = 640
global.cam_height = 360
global.scale = 2
 
globalvar screen_width, screen_height;
screen_width = global.cam_width * global.scale
screen_height = global.cam_height * global.scale

global.cam_follow = obj_character

x_to = x
y_to = y

// GUI
global.gui_scale = global.scale + 4

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