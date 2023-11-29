// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function act_settingsDisplay(){
	
	switch(obj_menuManager.activeMenu){
		case 0:
			selected = false;
			obj_menuManager.activeMenu = 1
			obj_menuManager.settings.showMenu();
			obj_menuManager.selection = 0;
			break;
		case 1:
			selected = false;
			obj_menuManager.activeMenu = 0
			obj_menuManager.settings.hideMenu();
			obj_menuManager.selection = 0;
			break;
	}
}