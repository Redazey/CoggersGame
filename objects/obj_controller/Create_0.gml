// если 0 - время идет, если 1 - время остановлено
global.pause = 0
global.t = 1

global.layers = []
buttons = [obj_btn_resume, obj_btn_settings, obj_btn_back_main]

// камера
global.cam_width = 640
global.cam_height = 360
global.scale = 2

global.cam_follow = obj_character

x_to = x
y_to = y

// неигровые комнаты
global.non_game_rooms = [rm_loading, rm_menu, rm_settings]

// блоки колизии
