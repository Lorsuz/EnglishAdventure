if (instance_exists(obj_test)){
	global.key_attack = keyboard_check_pressed(vk_enter)
	image_speed = 0
	exit;
}

image_speed = 1

#region CONTROLES
key_right = keyboard_check(ord("D"))
key_left = keyboard_check(ord("A"))
key_jump = keyboard_check(ord("W"))
global.key_interaction = keyboard_check_pressed(ord("F"))
global.key_attack = keyboard_check_pressed(vk_enter)
#endregion

#region MOVIMENTAÇÃO

var key = key_right - key_left

hspd = key * spd
vspd += grv

if (hspd != 0) image_xscale = sign(hspd)

if(place_meeting(x+hspd, y, obj_block)){
	while(!place_meeting(x+sign(hspd), y, obj_block)){
		x += sign(hspd)
	}
	hspd = 0
}

x += hspd

if(place_meeting(x, y+vspd, obj_block)){
	while(!place_meeting(x, y+sign(vspd), obj_block)){
		y += sign(vspd)
	}
	vspd = 0
}

y += vspd

if(place_meeting(x, y+1, obj_block)) and key_jump{
	vspd -= 10
}

#endregion

#region SPRITES

if(hspd = 0){
	sprite_index = spr_player_idle	
}

if(hspd != 0){
	sprite_index = spr_player_run	
}

#endregion

#region LIFE
if(global.life = 0) room_goto(rm_die)
#endregion

#region DIALOGO

if(distance_to_object(obj_npc_parent) <= 10){
	if(global.key_interaction and not instance_exists(obj_dialogo)){
		var _npc = instance_nearest(x, y, obj_npc_parent)
		var _dialogo = instance_create_layer(x, y, "Dialogo", obj_dialogo)
		_dialogo.npc_name = _npc.name
	}
}

if(distance_to_object(obj_npc_parent) >= 20 and instance_exists(obj_dialogo)){
	instance_destroy(obj_dialogo)
}

#endregion

#region ATAQUE
//if (global.key_attack and not instance_exists(obj_test)){
//	instance_create_layer(0,0,"Instances", obj_test)
//}

#endregion