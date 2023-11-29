// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function act_quit(){
	
	selection = 0;
	selected = false;
	create_popup(room_width/2-272,room_height/2,"DESEJA SAIR?","Sim",act_gameEnd,"Não",act_closePopup)
	
}