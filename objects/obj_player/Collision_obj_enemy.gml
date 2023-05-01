//instance_destroy(other)

//global.life--

instance_create_layer(x,y,"Instances", obj_test)

if (instance_exists(obj_test)){
	
	global.value += keyboard_string
	keyboard_string = ""
	
	if keyboard_check(vk_backspace){
		global.value = string_delete(global.value, string_length(global.value), 1)
	}
	
	if global.key_attack{
		
		if global.value = "attack"{
			instance_destroy(other)	
		} else {
			global.life--
			instance_destroy(other)
		}
		
		global.value = ""
		instance_destroy(obj_test)
	}
}