//MENU PRINCIPAL
mainMenu = new create_menu(32,162,true)
mainMenu.addButton(spr_bt,"JOGAR",act_gotoGameplay);
mainMenu.addButton(spr_bt,"CONFIGURAÇÕES",act_settingsDisplay);
mainMenu.addButton(spr_bt,"SAIR",act_quit);

//CONFIGURAÇÕES
settings = new create_menu(555,162,false)
// Botão Tela Cheia
var _fs = settings.addButton(spr_bt,"",act_fullscreen); //Botão de tela cheia
_fs.text = (window_get_fullscreen()) ? "Ativado" : "Desativado"; // Verifica o estado da janela
_fs.title = "TELA CHEIA"; // Título do botão
_fs.title_position = "up"; // Posição do titulo em relação ao botão
var _vol = settings.addSlider("VOLUME",act_updateVolume); // Slider de Volume
_vol.x += 32 // Ajuste da posição horizontal
_vol.current_value =  50 
settings.addButton(spr_bt,"VOLTAR",act_settingsDisplay);
settings.hideMenu();

//GAMEPLAY MENU
gp_menu = noone;

//MAIN MENU PAGES
MMpages[0] = mainMenu;
MMpages[1] = settings;
activeMenu = 0;
selection = 0;