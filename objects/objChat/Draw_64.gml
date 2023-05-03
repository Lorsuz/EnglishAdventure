var _guiw = display_get_gui_width()
var _guih = display_get_gui_height()

var _x = 0
var _y = _guih - 500
var _c = c_black

draw_set_font(fntChatBox)
draw_rectangle_color(_x, _y, _guiw, _guih - 300, _c, _c, _c, _c, false)
draw_text_ext(_x+32, _y+32, text[page], 32, _guih - 64)
