// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function act_fullscreen(){
	
	if(window_get_fullscreen()){
		window_set_fullscreen(false)
		text = "Desativado"
	}else{
		window_set_fullscreen(true)
		text = "Ativado"
	}

}