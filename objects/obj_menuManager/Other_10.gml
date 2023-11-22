/// @description Criar os botões na GUI
switch(room){

	case rm_menu:
		menu = new create_menu(555,162)
		// Botão Jogar
		menu.addButton(spr_bt,"JOGAR",act_gotoGameplay);
		// Botão Configurações
		menu.addButton(spr_bt,"CONFIGURAÇÕES",act_gotoSettings);
		// Botão Sair
		menu.addButton(spr_bt,"SAIR",act_quit);
		break;
	
	case rm_gameplay:
		menu = new create_menu(555,162)
		// Botão Voltar
		menu.addButton(spr_bt,"VOLTAR",act_gotoMenu);
		
		break;
		
	case rm_settings:
		menu = new create_menu(555,162)
		// Botão Tela Cheia
		var _fs = menu.addButton(spr_bt,"",act_fullscreen);
		_fs.text = (global.fullscreen) ? "Ativado" : "Desativado"; // Verifica o estado da janela
		_fs.title = "TELA CHEIA"; // Título do botão
		_fs.title_position = "up"; // Posição do titulo em relação ao botão
		// Slider de Volume
		var _vol = menu.addSlider("VOLUME",act_updateVolume);
		_vol.x += 32 // Ajuste da posição horizontal
		_vol.current_value =  global.volume // Ajusta do volume atual
		// Botão Voltar
		menu.addButton(spr_bt,"VOLTAR",act_gotoMenu);
		
		break;

}