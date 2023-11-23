// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function create_button(_x,_y,_sprite,_text,_action){
	
	var _bt = instance_create_depth(_x,_y,0,obj_bt);
	_bt.sprite_index = _sprite
	_bt.width = sprite_get_width(_sprite)
	_bt.height = sprite_get_height(_sprite)
	_bt.text = _text;
	_bt.action = _action;
	return _bt;
	
}