var _guiw = display_get_gui_width()
var _guih = display_get_gui_height()

var _x = 0
var _y = _guih - 500
var _c = c_black

draw_set_font(fnt_dialogo)
draw_rectangle_color(_x, _y, _guiw, _guih - 300, _c, _c, _c, _c, false)

draw_text(_x+32, _y+32, global.value)