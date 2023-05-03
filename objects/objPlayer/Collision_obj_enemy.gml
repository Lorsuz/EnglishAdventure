instance_create_layer(x,y,"ChatBox", objInputBox)

if (instance_exists(objInputBox)){
	keyboard_string = string_copy ( keyboard_string , 1 , 1 );
	global.inputMensage += keyboard_string
	keyboard_string = ""
	
	if keyboard_check(vk_backspace){
		global.inputMensage = string_delete(global.inputMensage, string_length(global.inputMensage), 1)
	}
	
	if global.keyAttack{
		
		if global.inputMensage != "attack"{
			global.life--
		}
		
		global.inputMensage = ""
		instance_destroy(other)
		instance_destroy(objInputBox)
	}
}