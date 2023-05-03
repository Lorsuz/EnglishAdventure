var positionX = 20
var positionY = 45

for(var i = 0; i < global.life; i++){
	positionX += 50
	draw_sprite(sprLifeIcon, 0, positionX, positionY)
}