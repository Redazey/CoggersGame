// Все, что связано с сохранением состояния комнаты
if global.need_restart = true {
    global.need_restart = false
    room_persistent = false
}
else {
    room_persistent = true
}