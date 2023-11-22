// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function create_menu(_x,_y,_sprite, _title = "", _priority = 0) constructor{

menu = [];
sprite = _sprite;
title = _title;
priority = _priority;

addButton = function(_x,_y,_sprite,_text,_action){
	var newButton = create_button(_x,_y,_sprite,_text,_action)
	array_insert(menu,newButton)
	return newButton;
}

return menu

}