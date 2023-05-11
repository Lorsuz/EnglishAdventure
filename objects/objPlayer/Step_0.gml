if (instance_exists(objInputBox)){
	global.keyAttack = keyboard_check_pressed(vk_enter)
	image_speed = 0
	exit;
}

image_speed = 1

#region CONTROLES
key_right = keyboard_check(ord("D"))
key_left = keyboard_check(ord("A"))
key_jump = keyboard_check(ord("W"))
global.key_interaction = keyboard_check_pressed(vk_space)
global.keyAttack = keyboard_check_pressed(vk_enter)
#endregion

#region MOVIMENTAÇÃO
var resultantForce = key_right - key_left
speedX = resultantForce * speedEntity
if (speedX != 0) image_xscale = sign(resultantForce)*3
if(place_meeting(x+speedX, y, objCollider)){
	while(!place_meeting(x+sign(speedX), y, objCollider)){
		x += sign(speedX)
	}
	speedX = 0
}
x += speedX
speedY += gravityGeral

if(place_meeting(x, y+speedY, objCollider)){
	speedY=0
		
}else{
	y+=speedY
}

if(place_meeting(x, y+1, objCollider)) and key_jump{
	speedY -= JumpForce
}
#endregion

#region SPRITES
if(speedX != 0){
		sprite_index = sprPlayerRun

}else{
		sprite_index = sprPlayerIdle
}
#endregion

#region LIFE
if(global.life = 0) room_goto(rmGameOver)
#endregion

#region DIALOGO

if(distance_to_object(objNPCsParent) <= 10){
	//if(global.key_interaction and not instance_exists(objChat)){
	if(not instance_exists(objChat)){
		var npc = instance_nearest(x, y, objNPCsParent)
		var chat = instance_create_layer(x, y, "ChatBox", objChat)
		chat.nameNPC = npc.nameNPC
	}
}

if(distance_to_object(objNPCsParent) >= 10 and instance_exists(objChat)){
	instance_destroy(objChat)
}

#endregion

#region ATAQUE
//if (global.key_attack and not instance_exists(obj_test)){
//	instance_create_layer(0,0,"Instances", obj_test)
//}

#endregion