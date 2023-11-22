// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function act_quit(){
	
	if(show_question("Deseja sair?")){
		game_end()
	}
	
}