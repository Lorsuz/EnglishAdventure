var guiWidth = display_get_gui_width()
var guiHeight = display_get_gui_height()

var positionX = 0
var positionY = guiHeight - 500
var color = c_black

draw_set_font(fntChatBox)
draw_rectangle_color(positionX, positionY, guiWidth, guiHeight - 300, color,  color, color, color, false)

draw_text(positionX+32, positionY+32, global.inputMensage)