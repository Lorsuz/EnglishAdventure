if inicializar == false{
	src_text()
	inicializar = true
}


if global.key_interaction {
	if page < array_length_1d(text) - 1{
		page++
	} else {
		instance_destroy()	
	}
}

