// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function create_menu(_x,_y,_title = "", _active = true) constructor{

x = _x
y = _y
list = [];
title = _title;
active = _active;

addButton = function(_sprite,_text,_action){
	var newButton = create_button(x,y,_sprite,_text,_action)
	array_push(list,newButton)
	newButton.y = y*array_length(list);
	return newButton;
}

addSlider = function(_title,_update_value){
	var newSlider = create_slider(_title,x,y,_update_value)
	array_push(list,newSlider)
	newSlider.y = y*array_length(list);
	return newSlider;
}

hideMenu = function(){
	for(var i=0;i<array_length(list);i++){
		list[i].visible = false;
		list[i].active = false;
	}
}

showMenu = function(){
	for(var i=0;i<array_length(list);i++){
		list[i].visible = true;
		list[i].active = true;
	}
}

}