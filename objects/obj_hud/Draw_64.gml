var _x = 0
var _y = 44

for(var i = 0; i < global.life; i++){
	_x += 47
	draw_sprite(spr_hearth, 0, _x, _y)
	show_debug_message(_x)
}