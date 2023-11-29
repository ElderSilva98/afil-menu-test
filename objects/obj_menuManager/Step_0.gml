// Obtem os inputs do teclado
var _up = obj_inputManager.up
var _down = obj_inputManager.down
var _left = obj_inputManager.left
var _right = obj_inputManager.right
var _actualMenu = noone;

switch(room){
	case rm_menu:
		_actualMenu = MMpages[activeMenu]; break;
	
	case rm_gameplay:
		if(gp_menu == noone){
			gp_menu = new create_menu(555,162,true)
			gp_menu.addButton(spr_bt,"VOLTAR",game_restart)
		}
		_actualMenu = gp_menu; break;
}

// Seleciona os elementos utilizando o teclado
if(_actualMenu != noone && !instance_exists(obj_popup)){
	if(_up){
		_actualMenu.list[selection].selected = false;
		selection--;
	}else if(_down){
		_actualMenu.list[selection].selected = false;
		selection++;
	}
	
	// Limita a seleção pelo range do array
	if(selection >= array_length(_actualMenu.list)) selection = 0;
	if(selection < 0)	selection = array_length(_actualMenu.list)-1
	
	// Diz para o elemento da UI que ele está sendo selecionado
	_actualMenu.list[selection].selected = true;

}else{
	
	if(_left){
		obj_popup.options[selection].selected = false;
		selection--;
	}else if(_right){
		obj_popup.options[selection].selected = false;
		selection++;
	}
	
	// Limita a seleção pelo range do array
	if(selection >= array_length(obj_popup.options)) selection = 0;
	if(selection < 0)	selection = array_length(obj_popup.options)-1
	
	// Diz para o elemento da UI que ele está sendo selecionado
	obj_popup.options[selection].selected = true;

}