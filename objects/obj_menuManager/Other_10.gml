/// @description Criar os botões na GUI
switch(room){

	case rm_menu:
		var _play = create_button(555,162,spr_bt,"JOGAR",act_gotoGameplay)
		var _settings= create_button(555,162+128,spr_bt,"CONFIGURAÇÕES",act_gotoSettings)
		var _quit = create_button(555,162+255,spr_bt,"SAIR",act_quit)
		menu = [_play,_settings,_quit]
		show_message(menu)
		break;
	
	case rm_gameplay:
		var _gp_back = create_button(555,162,spr_bt,"VOLTAR",act_gotoMenu)
		menu = [_gp_back]
		break;
		
	case rm_settings:
		var _fs = create_button(555,162,spr_bt,"Desativado",act_fullscreen)
		_fs.title = "Tela Cheia"
		_fs.title_position = "up"
		var _volume = create_slider("Volume",555+32,162+160,act_updateVolume)
		var _st_back = create_button(555,162+255,spr_bt,"VOLTAR",act_gotoMenu)
		menu = [_fs,_volume,_st_back]
		show_message(menu)
		break;

}